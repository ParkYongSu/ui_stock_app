import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:us_stock_app/data/csv/csv_company_listing_parser.dart';
import 'package:us_stock_app/data/source/remote/listing_params.dart';
import 'package:us_stock_app/data/source/remote/stock_api.dart';
import 'package:us_stock_app/util/api.dart';

void main() {
  test("stock api test", () async {
    final api = StockApi(Dio(), baseUrl: baseUrl);

    final csv = await api.getListings(
        params: ListingParams(function: "LISTING_STATUS", apikey: apiKey));

    final parsed = CsvCompanyListingParser().parseFromCsv(csv);

    expect(parsed[0].symbol, "A");
    expect(parsed[0].name, "Agilent Technologies Inc");
    expect(parsed[0].exchange, "NYSE");
  });
}