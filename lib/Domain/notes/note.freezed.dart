// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NoteTearOff {
  const _$NoteTearOff();

  _Note call(
      {UniqueId? id,
      NoteBody? noteBody,
      NoteColor? noteColor,
      TodoListOf3? todoListOf3,
      String? dateTime}) {
    return _Note(
      id: id,
      noteBody: noteBody,
      noteColor: noteColor,
      todoListOf3: todoListOf3,
      dateTime: dateTime,
    );
  }
}

/// @nodoc
const $Note = _$NoteTearOff();

/// @nodoc
mixin _$Note {
  UniqueId? get id => throw _privateConstructorUsedError;
  NoteBody? get noteBody => throw _privateConstructorUsedError;
  NoteColor? get noteColor => throw _privateConstructorUsedError;
  TodoListOf3? get todoListOf3 => throw _privateConstructorUsedError;
  String? get dateTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteCopyWith<Note> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteCopyWith<$Res> {
  factory $NoteCopyWith(Note value, $Res Function(Note) then) =
      _$NoteCopyWithImpl<$Res>;
  $Res call(
      {UniqueId? id,
      NoteBody? noteBody,
      NoteColor? noteColor,
      TodoListOf3? todoListOf3,
      String? dateTime});
}

/// @nodoc
class _$NoteCopyWithImpl<$Res> implements $NoteCopyWith<$Res> {
  _$NoteCopyWithImpl(this._value, this._then);

  final Note _value;
  // ignore: unused_field
  final $Res Function(Note) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? noteBody = freezed,
    Object? noteColor = freezed,
    Object? todoListOf3 = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      noteBody: noteBody == freezed
          ? _value.noteBody
          : noteBody // ignore: cast_nullable_to_non_nullable
              as NoteBody?,
      noteColor: noteColor == freezed
          ? _value.noteColor
          : noteColor // ignore: cast_nullable_to_non_nullable
              as NoteColor?,
      todoListOf3: todoListOf3 == freezed
          ? _value.todoListOf3
          : todoListOf3 // ignore: cast_nullable_to_non_nullable
              as TodoListOf3?,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$NoteCopyWith<$Res> implements $NoteCopyWith<$Res> {
  factory _$NoteCopyWith(_Note value, $Res Function(_Note) then) =
      __$NoteCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId? id,
      NoteBody? noteBody,
      NoteColor? noteColor,
      TodoListOf3? todoListOf3,
      String? dateTime});
}

/// @nodoc
class __$NoteCopyWithImpl<$Res> extends _$NoteCopyWithImpl<$Res>
    implements _$NoteCopyWith<$Res> {
  __$NoteCopyWithImpl(_Note _value, $Res Function(_Note) _then)
      : super(_value, (v) => _then(v as _Note));

  @override
  _Note get _value => super._value as _Note;

  @override
  $Res call({
    Object? id = freezed,
    Object? noteBody = freezed,
    Object? noteColor = freezed,
    Object? todoListOf3 = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_Note(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      noteBody: noteBody == freezed
          ? _value.noteBody
          : noteBody // ignore: cast_nullable_to_non_nullable
              as NoteBody?,
      noteColor: noteColor == freezed
          ? _value.noteColor
          : noteColor // ignore: cast_nullable_to_non_nullable
              as NoteColor?,
      todoListOf3: todoListOf3 == freezed
          ? _value.todoListOf3
          : todoListOf3 // ignore: cast_nullable_to_non_nullable
              as TodoListOf3?,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Note extends _Note {
  const _$_Note(
      {this.id, this.noteBody, this.noteColor, this.todoListOf3, this.dateTime})
      : super._();

  @override
  final UniqueId? id;
  @override
  final NoteBody? noteBody;
  @override
  final NoteColor? noteColor;
  @override
  final TodoListOf3? todoListOf3;
  @override
  final String? dateTime;

  @override
  String toString() {
    return 'Note(id: $id, noteBody: $noteBody, noteColor: $noteColor, todoListOf3: $todoListOf3, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Note &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.noteBody, noteBody) ||
                const DeepCollectionEquality()
                    .equals(other.noteBody, noteBody)) &&
            (identical(other.noteColor, noteColor) ||
                const DeepCollectionEquality()
                    .equals(other.noteColor, noteColor)) &&
            (identical(other.todoListOf3, todoListOf3) ||
                const DeepCollectionEquality()
                    .equals(other.todoListOf3, todoListOf3)) &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(noteBody) ^
      const DeepCollectionEquality().hash(noteColor) ^
      const DeepCollectionEquality().hash(todoListOf3) ^
      const DeepCollectionEquality().hash(dateTime);

  @JsonKey(ignore: true)
  @override
  _$NoteCopyWith<_Note> get copyWith =>
      __$NoteCopyWithImpl<_Note>(this, _$identity);
}

abstract class _Note extends Note {
  const factory _Note(
      {UniqueId? id,
      NoteBody? noteBody,
      NoteColor? noteColor,
      TodoListOf3? todoListOf3,
      String? dateTime}) = _$_Note;
  const _Note._() : super._();

  @override
  UniqueId? get id => throw _privateConstructorUsedError;
  @override
  NoteBody? get noteBody => throw _privateConstructorUsedError;
  @override
  NoteColor? get noteColor => throw _privateConstructorUsedError;
  @override
  TodoListOf3? get todoListOf3 => throw _privateConstructorUsedError;
  @override
  String? get dateTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NoteCopyWith<_Note> get copyWith => throw _privateConstructorUsedError;
}
