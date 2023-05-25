import 'package:hive/hive.dart';
import 'package:us_stock_app/data/source/local/company_listing_entity.dart';

class StockDao {
  static const String companyListingKey = "companyListing";
  final box = Hive.box("stock.db");

  Future<void> insert({required List<CompanyListingEntity> value}) async {
    await box.put(companyListingKey, value);
  }

  Future<void> clear() async {
    await box.clear();
  }

  List<CompanyListingEntity> search({required String query}) {
    final data = box.get(companyListingKey, defaultValue: [])
        as List<CompanyListingEntity>;

    return data
        .where((element) =>
            query.toLowerCase().contains(element.name) ||
            query.toUpperCase().contains(element.symbol))
        .toList();
  }
}
