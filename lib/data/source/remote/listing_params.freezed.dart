// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listing_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListingParams _$ListingParamsFromJson(Map<String, dynamic> json) {
  return _ListingParams.fromJson(json);
}

/// @nodoc
mixin _$ListingParams {
  String get function => throw _privateConstructorUsedError;
  String get apikey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListingParamsCopyWith<ListingParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListingParamsCopyWith<$Res> {
  factory $ListingParamsCopyWith(
          ListingParams value, $Res Function(ListingParams) then) =
      _$ListingParamsCopyWithImpl<$Res, ListingParams>;
  @useResult
  $Res call({String function, String apikey});
}

/// @nodoc
class _$ListingParamsCopyWithImpl<$Res, $Val extends ListingParams>
    implements $ListingParamsCopyWith<$Res> {
  _$ListingParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? function = null,
    Object? apikey = null,
  }) {
    return _then(_value.copyWith(
      function: null == function
          ? _value.function
          : function // ignore: cast_nullable_to_non_nullable
              as String,
      apikey: null == apikey
          ? _value.apikey
          : apikey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListingParamsCopyWith<$Res>
    implements $ListingParamsCopyWith<$Res> {
  factory _$$_ListingParamsCopyWith(
          _$_ListingParams value, $Res Function(_$_ListingParams) then) =
      __$$_ListingParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String function, String apikey});
}

/// @nodoc
class __$$_ListingParamsCopyWithImpl<$Res>
    extends _$ListingParamsCopyWithImpl<$Res, _$_ListingParams>
    implements _$$_ListingParamsCopyWith<$Res> {
  __$$_ListingParamsCopyWithImpl(
      _$_ListingParams _value, $Res Function(_$_ListingParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? function = null,
    Object? apikey = null,
  }) {
    return _then(_$_ListingParams(
      function: null == function
          ? _value.function
          : function // ignore: cast_nullable_to_non_nullable
              as String,
      apikey: null == apikey
          ? _value.apikey
          : apikey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListingParams implements _ListingParams {
  _$_ListingParams({required this.function, required this.apikey});

  factory _$_ListingParams.fromJson(Map<String, dynamic> json) =>
      _$$_ListingParamsFromJson(json);

  @override
  final String function;
  @override
  final String apikey;

  @override
  String toString() {
    return 'ListingParams(function: $function, apikey: $apikey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListingParams &&
            (identical(other.function, function) ||
                other.function == function) &&
            (identical(other.apikey, apikey) || other.apikey == apikey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, function, apikey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListingParamsCopyWith<_$_ListingParams> get copyWith =>
      __$$_ListingParamsCopyWithImpl<_$_ListingParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListingParamsToJson(
      this,
    );
  }
}

abstract class _ListingParams implements ListingParams {
  factory _ListingParams(
      {required final String function,
      required final String apikey}) = _$_ListingParams;

  factory _ListingParams.fromJson(Map<String, dynamic> json) =
      _$_ListingParams.fromJson;

  @override
  String get function;
  @override
  String get apikey;
  @override
  @JsonKey(ignore: true)
  _$$_ListingParamsCopyWith<_$_ListingParams> get copyWith =>
      throw _privateConstructorUsedError;
}
