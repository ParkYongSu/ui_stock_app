import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'intra_day_info_dto.freezed.dart';

part 'intra_day_info_dto.g.dart';

@freezed
class IntraDayInfoDto with _$IntraDayInfoDto {
  factory IntraDayInfoDto({
    required String timestamp,
    required double close,
  }) = _IntraDayInfoDto;

  factory IntraDayInfoDto.fromJson(Map<String, dynamic> json) =>
      _$IntraDayInfoDtoFromJson(json);
}
