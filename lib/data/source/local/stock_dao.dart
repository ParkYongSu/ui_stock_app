import 'package:hive/hive.dart';
import 'package:us_stock_app/data/source/local/company_listing_entity.dart';
import 'package:us_stock_app/util/db.dart';

class StockDao {
  Future<void> insert({required List<CompanyListingEntity> value}) async {
    final box = await Hive.openBox<CompanyListingEntity>(stockDB);
    await box.addAll(value);
  }

  Future<void> clear() async {
    final box = await Hive.openBox<CompanyListingEntity>(stockDB);
    await box.clear();
  }

  Future<List<CompanyListingEntity>> search({required String query}) async {
    final box = await Hive.openBox<CompanyListingEntity>(stockDB);
    final data = box.values.toList();

    return data
        .where((element) =>
            query.toLowerCase().contains(element.name) ||
            query.toUpperCase().contains(element.symbol))
        .toList();
  }
}
