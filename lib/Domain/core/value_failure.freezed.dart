// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  _InvalidEmail<T> invalidEmail<T>() {
    return _InvalidEmail<T>();
  }

  _ShortPassword<T> shortPassword<T>() {
    return _ShortPassword<T>();
  }

  _ExceedingLength<T> exceedingLength<T>({T? failedValue, int? maxLength}) {
    return _ExceedingLength<T>(
      failedValue: failedValue,
      maxLength: maxLength,
    );
  }

  _Empty<T> empty<T>({T? failedValue}) {
    return _Empty<T>(
      failedValue: failedValue,
    );
  }

  _ListTooLong<T> listTooLong<T>({T? failedValue, int? maxLength}) {
    return _ListTooLong<T>(
      failedValue: failedValue,
      maxLength: maxLength,
    );
  }

  _MultiLine<T> multiLine<T>({T? failedValue}) {
    return _MultiLine<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmail,
    required TResult Function() shortPassword,
    required TResult Function(T? failedValue, int? maxLength) exceedingLength,
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue, int? maxLength) listTooLong,
    required TResult Function(T? failedValue) multiLine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmail,
    TResult Function()? shortPassword,
    TResult Function(T? failedValue, int? maxLength)? exceedingLength,
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue, int? maxLength)? listTooLong,
    TResult Function(T? failedValue)? multiLine,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortPassword<T> value) shortPassword,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_ListTooLong<T> value) listTooLong,
    required TResult Function(_MultiLine<T> value) multiLine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_ListTooLong<T> value)? listTooLong,
    TResult Function(_MultiLine<T> value)? multiLine,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class _$InvalidEmailCopyWith<T, $Res> {
  factory _$InvalidEmailCopyWith(
          _InvalidEmail<T> value, $Res Function(_InvalidEmail<T>) then) =
      __$InvalidEmailCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$InvalidEmailCopyWith<T, $Res> {
  __$InvalidEmailCopyWithImpl(
      _InvalidEmail<T> _value, $Res Function(_InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as _InvalidEmail<T>));

  @override
  _InvalidEmail<T> get _value => super._value as _InvalidEmail<T>;
}

/// @nodoc

class _$_InvalidEmail<T> implements _InvalidEmail<T> {
  const _$_InvalidEmail();

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InvalidEmail<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmail,
    required TResult Function() shortPassword,
    required TResult Function(T? failedValue, int? maxLength) exceedingLength,
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue, int? maxLength) listTooLong,
    required TResult Function(T? failedValue) multiLine,
  }) {
    return invalidEmail();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmail,
    TResult Function()? shortPassword,
    TResult Function(T? failedValue, int? maxLength)? exceedingLength,
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue, int? maxLength)? listTooLong,
    TResult Function(T? failedValue)? multiLine,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortPassword<T> value) shortPassword,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_ListTooLong<T> value) listTooLong,
    required TResult Function(_MultiLine<T> value) multiLine,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_ListTooLong<T> value)? listTooLong,
    TResult Function(_MultiLine<T> value)? multiLine,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmail<T> implements ValueFailure<T> {
  const factory _InvalidEmail() = _$_InvalidEmail<T>;
}

/// @nodoc
abstract class _$ShortPasswordCopyWith<T, $Res> {
  factory _$ShortPasswordCopyWith(
          _ShortPassword<T> value, $Res Function(_ShortPassword<T>) then) =
      __$ShortPasswordCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$ShortPasswordCopyWith<T, $Res> {
  __$ShortPasswordCopyWithImpl(
      _ShortPassword<T> _value, $Res Function(_ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as _ShortPassword<T>));

  @override
  _ShortPassword<T> get _value => super._value as _ShortPassword<T>;
}

/// @nodoc

class _$_ShortPassword<T> implements _ShortPassword<T> {
  const _$_ShortPassword();

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ShortPassword<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmail,
    required TResult Function() shortPassword,
    required TResult Function(T? failedValue, int? maxLength) exceedingLength,
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue, int? maxLength) listTooLong,
    required TResult Function(T? failedValue) multiLine,
  }) {
    return shortPassword();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmail,
    TResult Function()? shortPassword,
    TResult Function(T? failedValue, int? maxLength)? exceedingLength,
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue, int? maxLength)? listTooLong,
    TResult Function(T? failedValue)? multiLine,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortPassword<T> value) shortPassword,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_ListTooLong<T> value) listTooLong,
    required TResult Function(_MultiLine<T> value) multiLine,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_ListTooLong<T> value)? listTooLong,
    TResult Function(_MultiLine<T> value)? multiLine,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class _ShortPassword<T> implements ValueFailure<T> {
  const factory _ShortPassword() = _$_ShortPassword<T>;
}

/// @nodoc
abstract class _$ExceedingLengthCopyWith<T, $Res> {
  factory _$ExceedingLengthCopyWith(
          _ExceedingLength<T> value, $Res Function(_ExceedingLength<T>) then) =
      __$ExceedingLengthCopyWithImpl<T, $Res>;
  $Res call({T? failedValue, int? maxLength});
}

/// @nodoc
class __$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$ExceedingLengthCopyWith<T, $Res> {
  __$ExceedingLengthCopyWithImpl(
      _ExceedingLength<T> _value, $Res Function(_ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as _ExceedingLength<T>));

  @override
  _ExceedingLength<T> get _value => super._value as _ExceedingLength<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? maxLength = freezed,
  }) {
    return _then(_ExceedingLength<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
      maxLength: maxLength == freezed
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_ExceedingLength<T> implements _ExceedingLength<T> {
  const _$_ExceedingLength({this.failedValue, this.maxLength});

  @override
  final T? failedValue;
  @override
  final int? maxLength;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, maxLength: $maxLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExceedingLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.maxLength, maxLength) ||
                const DeepCollectionEquality()
                    .equals(other.maxLength, maxLength)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(maxLength);

  @JsonKey(ignore: true)
  @override
  _$ExceedingLengthCopyWith<T, _ExceedingLength<T>> get copyWith =>
      __$ExceedingLengthCopyWithImpl<T, _ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmail,
    required TResult Function() shortPassword,
    required TResult Function(T? failedValue, int? maxLength) exceedingLength,
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue, int? maxLength) listTooLong,
    required TResult Function(T? failedValue) multiLine,
  }) {
    return exceedingLength(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmail,
    TResult Function()? shortPassword,
    TResult Function(T? failedValue, int? maxLength)? exceedingLength,
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue, int? maxLength)? listTooLong,
    TResult Function(T? failedValue)? multiLine,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedValue, maxLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortPassword<T> value) shortPassword,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_ListTooLong<T> value) listTooLong,
    required TResult Function(_MultiLine<T> value) multiLine,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_ListTooLong<T> value)? listTooLong,
    TResult Function(_MultiLine<T> value)? multiLine,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class _ExceedingLength<T> implements ValueFailure<T> {
  const factory _ExceedingLength({T? failedValue, int? maxLength}) =
      _$_ExceedingLength<T>;

  T? get failedValue => throw _privateConstructorUsedError;
  int? get maxLength => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ExceedingLengthCopyWith<T, _ExceedingLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmptyCopyWith<T, $Res> {
  factory _$EmptyCopyWith(_Empty<T> value, $Res Function(_Empty<T>) then) =
      __$EmptyCopyWithImpl<T, $Res>;
  $Res call({T? failedValue});
}

/// @nodoc
class __$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$EmptyCopyWith<T, $Res> {
  __$EmptyCopyWithImpl(_Empty<T> _value, $Res Function(_Empty<T>) _then)
      : super(_value, (v) => _then(v as _Empty<T>));

  @override
  _Empty<T> get _value => super._value as _Empty<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_Empty<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$_Empty<T> implements _Empty<T> {
  const _$_Empty({this.failedValue});

  @override
  final T? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Empty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  _$EmptyCopyWith<T, _Empty<T>> get copyWith =>
      __$EmptyCopyWithImpl<T, _Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmail,
    required TResult Function() shortPassword,
    required TResult Function(T? failedValue, int? maxLength) exceedingLength,
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue, int? maxLength) listTooLong,
    required TResult Function(T? failedValue) multiLine,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmail,
    TResult Function()? shortPassword,
    TResult Function(T? failedValue, int? maxLength)? exceedingLength,
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue, int? maxLength)? listTooLong,
    TResult Function(T? failedValue)? multiLine,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortPassword<T> value) shortPassword,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_ListTooLong<T> value) listTooLong,
    required TResult Function(_MultiLine<T> value) multiLine,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_ListTooLong<T> value)? listTooLong,
    TResult Function(_MultiLine<T> value)? multiLine,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty<T> implements ValueFailure<T> {
  const factory _Empty({T? failedValue}) = _$_Empty<T>;

  T? get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EmptyCopyWith<T, _Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ListTooLongCopyWith<T, $Res> {
  factory _$ListTooLongCopyWith(
          _ListTooLong<T> value, $Res Function(_ListTooLong<T>) then) =
      __$ListTooLongCopyWithImpl<T, $Res>;
  $Res call({T? failedValue, int? maxLength});
}

/// @nodoc
class __$ListTooLongCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$ListTooLongCopyWith<T, $Res> {
  __$ListTooLongCopyWithImpl(
      _ListTooLong<T> _value, $Res Function(_ListTooLong<T>) _then)
      : super(_value, (v) => _then(v as _ListTooLong<T>));

  @override
  _ListTooLong<T> get _value => super._value as _ListTooLong<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? maxLength = freezed,
  }) {
    return _then(_ListTooLong<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
      maxLength: maxLength == freezed
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_ListTooLong<T> implements _ListTooLong<T> {
  const _$_ListTooLong({this.failedValue, this.maxLength});

  @override
  final T? failedValue;
  @override
  final int? maxLength;

  @override
  String toString() {
    return 'ValueFailure<$T>.listTooLong(failedValue: $failedValue, maxLength: $maxLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListTooLong<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.maxLength, maxLength) ||
                const DeepCollectionEquality()
                    .equals(other.maxLength, maxLength)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(maxLength);

  @JsonKey(ignore: true)
  @override
  _$ListTooLongCopyWith<T, _ListTooLong<T>> get copyWith =>
      __$ListTooLongCopyWithImpl<T, _ListTooLong<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmail,
    required TResult Function() shortPassword,
    required TResult Function(T? failedValue, int? maxLength) exceedingLength,
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue, int? maxLength) listTooLong,
    required TResult Function(T? failedValue) multiLine,
  }) {
    return listTooLong(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmail,
    TResult Function()? shortPassword,
    TResult Function(T? failedValue, int? maxLength)? exceedingLength,
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue, int? maxLength)? listTooLong,
    TResult Function(T? failedValue)? multiLine,
    required TResult orElse(),
  }) {
    if (listTooLong != null) {
      return listTooLong(failedValue, maxLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortPassword<T> value) shortPassword,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_ListTooLong<T> value) listTooLong,
    required TResult Function(_MultiLine<T> value) multiLine,
  }) {
    return listTooLong(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_ListTooLong<T> value)? listTooLong,
    TResult Function(_MultiLine<T> value)? multiLine,
    required TResult orElse(),
  }) {
    if (listTooLong != null) {
      return listTooLong(this);
    }
    return orElse();
  }
}

abstract class _ListTooLong<T> implements ValueFailure<T> {
  const factory _ListTooLong({T? failedValue, int? maxLength}) =
      _$_ListTooLong<T>;

  T? get failedValue => throw _privateConstructorUsedError;
  int? get maxLength => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ListTooLongCopyWith<T, _ListTooLong<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$MultiLineCopyWith<T, $Res> {
  factory _$MultiLineCopyWith(
          _MultiLine<T> value, $Res Function(_MultiLine<T>) then) =
      __$MultiLineCopyWithImpl<T, $Res>;
  $Res call({T? failedValue});
}

/// @nodoc
class __$MultiLineCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$MultiLineCopyWith<T, $Res> {
  __$MultiLineCopyWithImpl(
      _MultiLine<T> _value, $Res Function(_MultiLine<T>) _then)
      : super(_value, (v) => _then(v as _MultiLine<T>));

  @override
  _MultiLine<T> get _value => super._value as _MultiLine<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_MultiLine<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$_MultiLine<T> implements _MultiLine<T> {
  const _$_MultiLine({this.failedValue});

  @override
  final T? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.multiLine(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MultiLine<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  _$MultiLineCopyWith<T, _MultiLine<T>> get copyWith =>
      __$MultiLineCopyWithImpl<T, _MultiLine<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmail,
    required TResult Function() shortPassword,
    required TResult Function(T? failedValue, int? maxLength) exceedingLength,
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue, int? maxLength) listTooLong,
    required TResult Function(T? failedValue) multiLine,
  }) {
    return multiLine(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmail,
    TResult Function()? shortPassword,
    TResult Function(T? failedValue, int? maxLength)? exceedingLength,
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue, int? maxLength)? listTooLong,
    TResult Function(T? failedValue)? multiLine,
    required TResult orElse(),
  }) {
    if (multiLine != null) {
      return multiLine(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortPassword<T> value) shortPassword,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_ListTooLong<T> value) listTooLong,
    required TResult Function(_MultiLine<T> value) multiLine,
  }) {
    return multiLine(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_ListTooLong<T> value)? listTooLong,
    TResult Function(_MultiLine<T> value)? multiLine,
    required TResult orElse(),
  }) {
    if (multiLine != null) {
      return multiLine(this);
    }
    return orElse();
  }
}

abstract class _MultiLine<T> implements ValueFailure<T> {
  const factory _MultiLine({T? failedValue}) = _$_MultiLine<T>;

  T? get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$MultiLineCopyWith<T, _MultiLine<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
