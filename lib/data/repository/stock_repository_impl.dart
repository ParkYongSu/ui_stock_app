import 'package:us_stock_app/data/source/local/stock_dao.dart';
import 'package:us_stock_app/data/source/mapper/company_mapper.dart';
import 'package:us_stock_app/data/source/remote/listing_params.dart';
import 'package:us_stock_app/data/source/remote/stock_api.dart';
import 'package:us_stock_app/domain/model/company_listing.dart';
import 'package:us_stock_app/domain/repository/stock_repository.dart';
import 'package:us_stock_app/util/api.dart';
import 'package:us_stock_app/util/result.dart';

class StockRepositoryImpl implements StockRepository {
  final StockApi api;
  final StockDao dao;

  StockRepositoryImpl({
    required this.api,
    required this.dao,
  });

  @override
  Future<Result<List<CompanyListing>>> getCompanyListing({
    required bool fetchLocal,
    required String query,
  }) async {
    final localListings = await dao.search(query: query);

    final isDbEmpty = localListings.isEmpty;
    final shouldLoadFromLocal = !isDbEmpty && (fetchLocal || query.isEmpty);

    if (shouldLoadFromLocal) {
      return Result.success(
        localListings.map((e) => e.toCompanyListing()).toList(),
      );
    }

    try {
      final remoteListings = await api.getListings(
        params: ListingParams(
          function: "LISTING_STATUS",
          apikey: apiKey,
        ),
      );
      return Result.success(remoteListings);
    } catch (e) {
      return Result.error(Exception("데이터 로드 실패"));
    }
  }
}
