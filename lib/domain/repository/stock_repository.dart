import 'package:us_stock_app/domain/model/company_info.dart';
import 'package:us_stock_app/domain/model/company_listing.dart';
import 'package:us_stock_app/domain/model/intra_day_info.dart';
import 'package:us_stock_app/util/result.dart';

abstract class StockRepository {
  Future<Result<List<CompanyListing>>> getCompanyListing({
    required bool fetchFromRemote,
    required String query,
  });

  Future<Result<CompanyInfo>> getCompanyInfo({required String symbol});

  Future<Result<List<IntraDayInfo>>> getIntraDayInfo({
    required String symbol,
    required String interval,
    required String dataType,
  });
}
