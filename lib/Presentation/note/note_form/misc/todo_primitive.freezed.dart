// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'todo_primitive.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodoPrimitiveTearOff {
  const _$TodoPrimitiveTearOff();

  _TodoPrimitive call({UniqueId? id, String? name, bool? done}) {
    return _TodoPrimitive(
      id: id,
      name: name,
      done: done,
    );
  }
}

/// @nodoc
const $TodoPrimitive = _$TodoPrimitiveTearOff();

/// @nodoc
mixin _$TodoPrimitive {
  UniqueId? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  bool? get done => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoPrimitiveCopyWith<TodoPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoPrimitiveCopyWith<$Res> {
  factory $TodoPrimitiveCopyWith(
          TodoPrimitive value, $Res Function(TodoPrimitive) then) =
      _$TodoPrimitiveCopyWithImpl<$Res>;
  $Res call({UniqueId? id, String? name, bool? done});
}

/// @nodoc
class _$TodoPrimitiveCopyWithImpl<$Res>
    implements $TodoPrimitiveCopyWith<$Res> {
  _$TodoPrimitiveCopyWithImpl(this._value, this._then);

  final TodoPrimitive _value;
  // ignore: unused_field
  final $Res Function(TodoPrimitive) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? done = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$TodoPrimitiveCopyWith<$Res>
    implements $TodoPrimitiveCopyWith<$Res> {
  factory _$TodoPrimitiveCopyWith(
          _TodoPrimitive value, $Res Function(_TodoPrimitive) then) =
      __$TodoPrimitiveCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId? id, String? name, bool? done});
}

/// @nodoc
class __$TodoPrimitiveCopyWithImpl<$Res>
    extends _$TodoPrimitiveCopyWithImpl<$Res>
    implements _$TodoPrimitiveCopyWith<$Res> {
  __$TodoPrimitiveCopyWithImpl(
      _TodoPrimitive _value, $Res Function(_TodoPrimitive) _then)
      : super(_value, (v) => _then(v as _TodoPrimitive));

  @override
  _TodoPrimitive get _value => super._value as _TodoPrimitive;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? done = freezed,
  }) {
    return _then(_TodoPrimitive(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_TodoPrimitive extends _TodoPrimitive {
  const _$_TodoPrimitive({this.id, this.name, this.done}) : super._();

  @override
  final UniqueId? id;
  @override
  final String? name;
  @override
  final bool? done;

  @override
  String toString() {
    return 'TodoPrimitive(id: $id, name: $name, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodoPrimitive &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.done, done) ||
                const DeepCollectionEquality().equals(other.done, done)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(done);

  @JsonKey(ignore: true)
  @override
  _$TodoPrimitiveCopyWith<_TodoPrimitive> get copyWith =>
      __$TodoPrimitiveCopyWithImpl<_TodoPrimitive>(this, _$identity);
}

abstract class _TodoPrimitive extends TodoPrimitive {
  const factory _TodoPrimitive({UniqueId? id, String? name, bool? done}) =
      _$_TodoPrimitive;
  const _TodoPrimitive._() : super._();

  @override
  UniqueId? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  bool? get done => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TodoPrimitiveCopyWith<_TodoPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}
