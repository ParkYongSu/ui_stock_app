import 'package:us_stock_app/data/csv/csv_company_listing_parser.dart';
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

  final CsvCompanyListingParser _parser = CsvCompanyListingParser();

  @override
  Future<Result<List<CompanyListing>>> getCompanyListing({
    required bool fetchFromRemote,
    required String query,
  }) async {
    final localListings = await dao.search(query: query);

    final isDbEmpty = localListings.isEmpty;
    final shouldLoadLocal = !isDbEmpty && !fetchFromRemote;

    if (shouldLoadLocal) {
      return Result.success(
        localListings.map((e) => e.toCompanyListing()).toList(),
      );
    }

    try {
      final csv = await api.getListings(
        params: ListingParams(
          function: "LISTING_STATUS",
          apikey: apiKey,
        ),
      );
      final parsed = _parser.parseFromCsv(csv);

      await dao.clear();
      await dao.insert(
        value: parsed.map((e) => e.toCompanyListingEntity()).toList(),
      );

      return Result.success(parsed);
    } catch (e) {
      return Result.error(Exception("데이터 로드 실패"));
    }
  }
}
