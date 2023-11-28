// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counter_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CounterInfoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCountryInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCountryInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCountryInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCountryInfo value) getCountryInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCountryInfo value)? getCountryInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCountryInfo value)? getCountryInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterInfoEventCopyWith<$Res> {
  factory $CounterInfoEventCopyWith(
          CounterInfoEvent value, $Res Function(CounterInfoEvent) then) =
      _$CounterInfoEventCopyWithImpl<$Res, CounterInfoEvent>;
}

/// @nodoc
class _$CounterInfoEventCopyWithImpl<$Res, $Val extends CounterInfoEvent>
    implements $CounterInfoEventCopyWith<$Res> {
  _$CounterInfoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCountryInfoImplCopyWith<$Res> {
  factory _$$GetCountryInfoImplCopyWith(_$GetCountryInfoImpl value,
          $Res Function(_$GetCountryInfoImpl) then) =
      __$$GetCountryInfoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCountryInfoImplCopyWithImpl<$Res>
    extends _$CounterInfoEventCopyWithImpl<$Res, _$GetCountryInfoImpl>
    implements _$$GetCountryInfoImplCopyWith<$Res> {
  __$$GetCountryInfoImplCopyWithImpl(
      _$GetCountryInfoImpl _value, $Res Function(_$GetCountryInfoImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCountryInfoImpl implements _GetCountryInfo {
  const _$GetCountryInfoImpl();

  @override
  String toString() {
    return 'CounterInfoEvent.getCountryInfo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCountryInfoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCountryInfo,
  }) {
    return getCountryInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCountryInfo,
  }) {
    return getCountryInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCountryInfo,
    required TResult orElse(),
  }) {
    if (getCountryInfo != null) {
      return getCountryInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCountryInfo value) getCountryInfo,
  }) {
    return getCountryInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCountryInfo value)? getCountryInfo,
  }) {
    return getCountryInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCountryInfo value)? getCountryInfo,
    required TResult orElse(),
  }) {
    if (getCountryInfo != null) {
      return getCountryInfo(this);
    }
    return orElse();
  }
}

abstract class _GetCountryInfo implements CounterInfoEvent {
  const factory _GetCountryInfo() = _$GetCountryInfoImpl;
}

/// @nodoc
mixin _$CounterInfoState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<Country> get data => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<Country>>> get dataFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CounterInfoStateCopyWith<CounterInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterInfoStateCopyWith<$Res> {
  factory $CounterInfoStateCopyWith(
          CounterInfoState value, $Res Function(CounterInfoState) then) =
      _$CounterInfoStateCopyWithImpl<$Res, CounterInfoState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<Country> data,
      Option<Either<MainFailure, List<Country>>> dataFailureOrSuccessOption});
}

/// @nodoc
class _$CounterInfoStateCopyWithImpl<$Res, $Val extends CounterInfoState>
    implements $CounterInfoStateCopyWith<$Res> {
  _$CounterInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? data = null,
    Object? dataFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Country>,
      dataFailureOrSuccessOption: null == dataFailureOrSuccessOption
          ? _value.dataFailureOrSuccessOption
          : dataFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Country>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CounterInfoStateImplCopyWith<$Res>
    implements $CounterInfoStateCopyWith<$Res> {
  factory _$$CounterInfoStateImplCopyWith(_$CounterInfoStateImpl value,
          $Res Function(_$CounterInfoStateImpl) then) =
      __$$CounterInfoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<Country> data,
      Option<Either<MainFailure, List<Country>>> dataFailureOrSuccessOption});
}

/// @nodoc
class __$$CounterInfoStateImplCopyWithImpl<$Res>
    extends _$CounterInfoStateCopyWithImpl<$Res, _$CounterInfoStateImpl>
    implements _$$CounterInfoStateImplCopyWith<$Res> {
  __$$CounterInfoStateImplCopyWithImpl(_$CounterInfoStateImpl _value,
      $Res Function(_$CounterInfoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? data = null,
    Object? dataFailureOrSuccessOption = null,
  }) {
    return _then(_$CounterInfoStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Country>,
      dataFailureOrSuccessOption: null == dataFailureOrSuccessOption
          ? _value.dataFailureOrSuccessOption
          : dataFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Country>>>,
    ));
  }
}

/// @nodoc

class _$CounterInfoStateImpl implements _CounterInfoState {
  const _$CounterInfoStateImpl(
      {required this.isLoading,
      required this.isError,
      required final List<Country> data,
      required this.dataFailureOrSuccessOption})
      : _data = data;

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<Country> _data;
  @override
  List<Country> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final Option<Either<MainFailure, List<Country>>> dataFailureOrSuccessOption;

  @override
  String toString() {
    return 'CounterInfoState(isLoading: $isLoading, isError: $isError, data: $data, dataFailureOrSuccessOption: $dataFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CounterInfoStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.dataFailureOrSuccessOption,
                    dataFailureOrSuccessOption) ||
                other.dataFailureOrSuccessOption ==
                    dataFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError,
      const DeepCollectionEquality().hash(_data), dataFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CounterInfoStateImplCopyWith<_$CounterInfoStateImpl> get copyWith =>
      __$$CounterInfoStateImplCopyWithImpl<_$CounterInfoStateImpl>(
          this, _$identity);
}

abstract class _CounterInfoState implements CounterInfoState {
  const factory _CounterInfoState(
      {required final bool isLoading,
      required final bool isError,
      required final List<Country> data,
      required final Option<Either<MainFailure, List<Country>>>
          dataFailureOrSuccessOption}) = _$CounterInfoStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<Country> get data;
  @override
  Option<Either<MainFailure, List<Country>>> get dataFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$CounterInfoStateImplCopyWith<_$CounterInfoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
