import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'listing_params.freezed.dart';
part 'listing_params.g.dart';

@freezed
class ListingParams with _$ListingParams {
	factory ListingParams({
    required String function,
		required String apikey,
}) = _ListingParams;

	factory ListingParams.fromJson(Map<String, dynamic> json) => _$ListingParamsFromJson(json);
}