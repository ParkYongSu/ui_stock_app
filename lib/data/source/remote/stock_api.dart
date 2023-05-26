import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:us_stock_app/data/source/remote/listing_params.dart';

part 'stock_api.g.dart';

@RestApi()
abstract class StockApi {
  factory StockApi(Dio dio, {required String baseUrl}) =
      _StockApi;

  @GET("/query")
  Future<String> getListings({
    @Queries() required ListingParams params,
  });
}
