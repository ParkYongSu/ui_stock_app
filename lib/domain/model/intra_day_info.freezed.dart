// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'intra_day_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IntraDayInfo _$IntraDayInfoFromJson(Map<String, dynamic> json) {
  return _IntraDayInfo.fromJson(json);
}

/// @nodoc
mixin _$IntraDayInfo {
  DateTime get date => throw _privateConstructorUsedError;
  double get close => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IntraDayInfoCopyWith<IntraDayInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntraDayInfoCopyWith<$Res> {
  factory $IntraDayInfoCopyWith(
          IntraDayInfo value, $Res Function(IntraDayInfo) then) =
      _$IntraDayInfoCopyWithImpl<$Res, IntraDayInfo>;
  @useResult
  $Res call({DateTime date, double close});
}

/// @nodoc
class _$IntraDayInfoCopyWithImpl<$Res, $Val extends IntraDayInfo>
    implements $IntraDayInfoCopyWith<$Res> {
  _$IntraDayInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? close = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IntraDayInfoCopyWith<$Res>
    implements $IntraDayInfoCopyWith<$Res> {
  factory _$$_IntraDayInfoCopyWith(
          _$_IntraDayInfo value, $Res Function(_$_IntraDayInfo) then) =
      __$$_IntraDayInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, double close});
}

/// @nodoc
class __$$_IntraDayInfoCopyWithImpl<$Res>
    extends _$IntraDayInfoCopyWithImpl<$Res, _$_IntraDayInfo>
    implements _$$_IntraDayInfoCopyWith<$Res> {
  __$$_IntraDayInfoCopyWithImpl(
      _$_IntraDayInfo _value, $Res Function(_$_IntraDayInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? close = null,
  }) {
    return _then(_$_IntraDayInfo(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IntraDayInfo implements _IntraDayInfo {
  _$_IntraDayInfo({required this.date, required this.close});

  factory _$_IntraDayInfo.fromJson(Map<String, dynamic> json) =>
      _$$_IntraDayInfoFromJson(json);

  @override
  final DateTime date;
  @override
  final double close;

  @override
  String toString() {
    return 'IntraDayInfo(date: $date, close: $close)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IntraDayInfo &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.close, close) || other.close == close));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, close);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IntraDayInfoCopyWith<_$_IntraDayInfo> get copyWith =>
      __$$_IntraDayInfoCopyWithImpl<_$_IntraDayInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IntraDayInfoToJson(
      this,
    );
  }
}

abstract class _IntraDayInfo implements IntraDayInfo {
  factory _IntraDayInfo(
      {required final DateTime date,
      required final double close}) = _$_IntraDayInfo;

  factory _IntraDayInfo.fromJson(Map<String, dynamic> json) =
      _$_IntraDayInfo.fromJson;

  @override
  DateTime get date;
  @override
  double get close;
  @override
  @JsonKey(ignore: true)
  _$$_IntraDayInfoCopyWith<_$_IntraDayInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
