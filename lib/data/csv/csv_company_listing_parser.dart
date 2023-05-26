import 'package:csv/csv.dart';
import 'package:us_stock_app/data/csv/csv_parser.dart';
import 'package:us_stock_app/domain/model/company_listing.dart';

class CsvCompanyListingParser implements CsvParser<CompanyListing> {
  @override
  List<CompanyListing> parseFromCsv(String csv) {
    final parsed = const CsvToListConverter().convert(csv);
    parsed.removeAt(0);

    final converted = parsed.map((e) {
      final symbol = e[0] ?? "";
      final name = e[1] ?? "";
      final exchange = e[2] ?? "";

      return CompanyListing(
        symbol: symbol,
        name: name,
        exchange: exchange,
      );
    });

    return converted.where(
      (element) =>
          element.symbol.isNotEmpty &&
          element.name.isNotEmpty &&
          element.exchange.isNotEmpty,
    ).toList();
  }
}
