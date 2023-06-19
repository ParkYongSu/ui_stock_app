import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'intra_day_info.freezed.dart';
part 'intra_day_info.g.dart';

@freezed
class IntraDayInfo with _$IntraDayInfo {
	factory IntraDayInfo({
    required DateTime date,
    required double close,
}) = _IntraDayInfo;

	factory IntraDayInfo.fromJson(Map<String, dynamic> json) => _$IntraDayInfoFromJson(json);
}