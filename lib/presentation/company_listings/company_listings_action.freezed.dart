// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_listings_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CompanyListingsAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(String query) onSearchQueryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(String query)? onSearchQueryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String query)? onSearchQueryChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Refresh value) refresh,
    required TResult Function(OnSearchQueryChanged value) onSearchQueryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Refresh value)? refresh,
    TResult? Function(OnSearchQueryChanged value)? onSearchQueryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Refresh value)? refresh,
    TResult Function(OnSearchQueryChanged value)? onSearchQueryChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyListingsActionCopyWith<$Res> {
  factory $CompanyListingsActionCopyWith(CompanyListingsAction value,
          $Res Function(CompanyListingsAction) then) =
      _$CompanyListingsActionCopyWithImpl<$Res, CompanyListingsAction>;
}

/// @nodoc
class _$CompanyListingsActionCopyWithImpl<$Res,
        $Val extends CompanyListingsAction>
    implements $CompanyListingsActionCopyWith<$Res> {
  _$CompanyListingsActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RefreshCopyWith<$Res> {
  factory _$$RefreshCopyWith(_$Refresh value, $Res Function(_$Refresh) then) =
      __$$RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshCopyWithImpl<$Res>
    extends _$CompanyListingsActionCopyWithImpl<$Res, _$Refresh>
    implements _$$RefreshCopyWith<$Res> {
  __$$RefreshCopyWithImpl(_$Refresh _value, $Res Function(_$Refresh) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Refresh implements Refresh {
  const _$Refresh();

  @override
  String toString() {
    return 'CompanyListingsAction.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(String query) onSearchQueryChanged,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(String query)? onSearchQueryChanged,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String query)? onSearchQueryChanged,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Refresh value) refresh,
    required TResult Function(OnSearchQueryChanged value) onSearchQueryChanged,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Refresh value)? refresh,
    TResult? Function(OnSearchQueryChanged value)? onSearchQueryChanged,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Refresh value)? refresh,
    TResult Function(OnSearchQueryChanged value)? onSearchQueryChanged,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class Refresh implements CompanyListingsAction {
  const factory Refresh() = _$Refresh;
}

/// @nodoc
abstract class _$$OnSearchQueryChangedCopyWith<$Res> {
  factory _$$OnSearchQueryChangedCopyWith(_$OnSearchQueryChanged value,
          $Res Function(_$OnSearchQueryChanged) then) =
      __$$OnSearchQueryChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$OnSearchQueryChangedCopyWithImpl<$Res>
    extends _$CompanyListingsActionCopyWithImpl<$Res, _$OnSearchQueryChanged>
    implements _$$OnSearchQueryChangedCopyWith<$Res> {
  __$$OnSearchQueryChangedCopyWithImpl(_$OnSearchQueryChanged _value,
      $Res Function(_$OnSearchQueryChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$OnSearchQueryChanged(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnSearchQueryChanged implements OnSearchQueryChanged {
  const _$OnSearchQueryChanged(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'CompanyListingsAction.onSearchQueryChanged(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSearchQueryChanged &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSearchQueryChangedCopyWith<_$OnSearchQueryChanged> get copyWith =>
      __$$OnSearchQueryChangedCopyWithImpl<_$OnSearchQueryChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(String query) onSearchQueryChanged,
  }) {
    return onSearchQueryChanged(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(String query)? onSearchQueryChanged,
  }) {
    return onSearchQueryChanged?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String query)? onSearchQueryChanged,
    required TResult orElse(),
  }) {
    if (onSearchQueryChanged != null) {
      return onSearchQueryChanged(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Refresh value) refresh,
    required TResult Function(OnSearchQueryChanged value) onSearchQueryChanged,
  }) {
    return onSearchQueryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Refresh value)? refresh,
    TResult? Function(OnSearchQueryChanged value)? onSearchQueryChanged,
  }) {
    return onSearchQueryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Refresh value)? refresh,
    TResult Function(OnSearchQueryChanged value)? onSearchQueryChanged,
    required TResult orElse(),
  }) {
    if (onSearchQueryChanged != null) {
      return onSearchQueryChanged(this);
    }
    return orElse();
  }
}

abstract class OnSearchQueryChanged implements CompanyListingsAction {
  const factory OnSearchQueryChanged(final String query) =
      _$OnSearchQueryChanged;

  String get query;
  @JsonKey(ignore: true)
  _$$OnSearchQueryChangedCopyWith<_$OnSearchQueryChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
