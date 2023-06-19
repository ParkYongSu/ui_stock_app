// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'intra_day_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IntraDayInfoDto _$IntraDayInfoDtoFromJson(Map<String, dynamic> json) {
  return _IntraDayInfoDto.fromJson(json);
}

/// @nodoc
mixin _$IntraDayInfoDto {
  String get timestamp => throw _privateConstructorUsedError;
  double get close => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IntraDayInfoDtoCopyWith<IntraDayInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntraDayInfoDtoCopyWith<$Res> {
  factory $IntraDayInfoDtoCopyWith(
          IntraDayInfoDto value, $Res Function(IntraDayInfoDto) then) =
      _$IntraDayInfoDtoCopyWithImpl<$Res, IntraDayInfoDto>;
  @useResult
  $Res call({String timestamp, double close});
}

/// @nodoc
class _$IntraDayInfoDtoCopyWithImpl<$Res, $Val extends IntraDayInfoDto>
    implements $IntraDayInfoDtoCopyWith<$Res> {
  _$IntraDayInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? close = null,
  }) {
    return _then(_value.copyWith(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IntraDayInfoDtoCopyWith<$Res>
    implements $IntraDayInfoDtoCopyWith<$Res> {
  factory _$$_IntraDayInfoDtoCopyWith(
          _$_IntraDayInfoDto value, $Res Function(_$_IntraDayInfoDto) then) =
      __$$_IntraDayInfoDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String timestamp, double close});
}

/// @nodoc
class __$$_IntraDayInfoDtoCopyWithImpl<$Res>
    extends _$IntraDayInfoDtoCopyWithImpl<$Res, _$_IntraDayInfoDto>
    implements _$$_IntraDayInfoDtoCopyWith<$Res> {
  __$$_IntraDayInfoDtoCopyWithImpl(
      _$_IntraDayInfoDto _value, $Res Function(_$_IntraDayInfoDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? close = null,
  }) {
    return _then(_$_IntraDayInfoDto(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IntraDayInfoDto implements _IntraDayInfoDto {
  _$_IntraDayInfoDto({required this.timestamp, required this.close});

  factory _$_IntraDayInfoDto.fromJson(Map<String, dynamic> json) =>
      _$$_IntraDayInfoDtoFromJson(json);

  @override
  final String timestamp;
  @override
  final double close;

  @override
  String toString() {
    return 'IntraDayInfoDto(timestamp: $timestamp, close: $close)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IntraDayInfoDto &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.close, close) || other.close == close));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, timestamp, close);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IntraDayInfoDtoCopyWith<_$_IntraDayInfoDto> get copyWith =>
      __$$_IntraDayInfoDtoCopyWithImpl<_$_IntraDayInfoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IntraDayInfoDtoToJson(
      this,
    );
  }
}

abstract class _IntraDayInfoDto implements IntraDayInfoDto {
  factory _IntraDayInfoDto(
      {required final String timestamp,
      required final double close}) = _$_IntraDayInfoDto;

  factory _IntraDayInfoDto.fromJson(Map<String, dynamic> json) =
      _$_IntraDayInfoDto.fromJson;

  @override
  String get timestamp;
  @override
  double get close;
  @override
  @JsonKey(ignore: true)
  _$$_IntraDayInfoDtoCopyWith<_$_IntraDayInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}
