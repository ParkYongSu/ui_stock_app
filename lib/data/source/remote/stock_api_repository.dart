import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:us_stock_app/data/source/remote/listing_params.dart';

part 'stock_api_repository.g.dart';

@RestApi()
abstract class StockApiRepository {
  factory StockApiRepository(Dio dio, {required String baseUrl}) =
      _StockApiRepository;

  @GET("/query")
  Future<dynamic> getListings({
    @Queries() required ListingParams params,
  });
}
