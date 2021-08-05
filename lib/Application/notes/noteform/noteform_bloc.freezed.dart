// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'noteform_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NoteformEventTearOff {
  const _$NoteformEventTearOff();

  _Initialized initialized({Note? note}) {
    return _Initialized(
      note: note,
    );
  }

  _BodyChanged bodyChanged({String? body}) {
    return _BodyChanged(
      body: body,
    );
  }

  _ColorChanged colorChanged({Color? color}) {
    return _ColorChanged(
      color: color,
    );
  }

  _TodosChanged todosChanged({List<TodoPrimitive>? todos}) {
    return _TodosChanged(
      todos: todos,
    );
  }

  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
const $NoteformEvent = _$NoteformEventTearOff();

/// @nodoc
mixin _$NoteformEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note? note) initialized,
    required TResult Function(String? body) bodyChanged,
    required TResult Function(Color? color) colorChanged,
    required TResult Function(List<TodoPrimitive>? todos) todosChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note? note)? initialized,
    TResult Function(String? body)? bodyChanged,
    TResult Function(Color? color)? colorChanged,
    TResult Function(List<TodoPrimitive>? todos)? todosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_TodosChanged value) todosChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteformEventCopyWith<$Res> {
  factory $NoteformEventCopyWith(
          NoteformEvent value, $Res Function(NoteformEvent) then) =
      _$NoteformEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoteformEventCopyWithImpl<$Res>
    implements $NoteformEventCopyWith<$Res> {
  _$NoteformEventCopyWithImpl(this._value, this._then);

  final NoteformEvent _value;
  // ignore: unused_field
  final $Res Function(NoteformEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Note? note});

  $NoteCopyWith<$Res>? get note;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$NoteformEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? note = freezed,
  }) {
    return _then(_Initialized(
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note?,
    ));
  }

  @override
  $NoteCopyWith<$Res>? get note {
    if (_value.note == null) {
      return null;
    }

    return $NoteCopyWith<$Res>(_value.note!, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized({this.note});

  @override
  final Note? note;

  @override
  String toString() {
    return 'NoteformEvent.initialized(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(note);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note? note) initialized,
    required TResult Function(String? body) bodyChanged,
    required TResult Function(Color? color) colorChanged,
    required TResult Function(List<TodoPrimitive>? todos) todosChanged,
    required TResult Function() saved,
  }) {
    return initialized(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note? note)? initialized,
    TResult Function(String? body)? bodyChanged,
    TResult Function(Color? color)? colorChanged,
    TResult Function(List<TodoPrimitive>? todos)? todosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_TodosChanged value) todosChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements NoteformEvent {
  const factory _Initialized({Note? note}) = _$_Initialized;

  Note? get note => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BodyChangedCopyWith<$Res> {
  factory _$BodyChangedCopyWith(
          _BodyChanged value, $Res Function(_BodyChanged) then) =
      __$BodyChangedCopyWithImpl<$Res>;
  $Res call({String? body});
}

/// @nodoc
class __$BodyChangedCopyWithImpl<$Res> extends _$NoteformEventCopyWithImpl<$Res>
    implements _$BodyChangedCopyWith<$Res> {
  __$BodyChangedCopyWithImpl(
      _BodyChanged _value, $Res Function(_BodyChanged) _then)
      : super(_value, (v) => _then(v as _BodyChanged));

  @override
  _BodyChanged get _value => super._value as _BodyChanged;

  @override
  $Res call({
    Object? body = freezed,
  }) {
    return _then(_BodyChanged(
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_BodyChanged implements _BodyChanged {
  const _$_BodyChanged({this.body});

  @override
  final String? body;

  @override
  String toString() {
    return 'NoteformEvent.bodyChanged(body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BodyChanged &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(body);

  @JsonKey(ignore: true)
  @override
  _$BodyChangedCopyWith<_BodyChanged> get copyWith =>
      __$BodyChangedCopyWithImpl<_BodyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note? note) initialized,
    required TResult Function(String? body) bodyChanged,
    required TResult Function(Color? color) colorChanged,
    required TResult Function(List<TodoPrimitive>? todos) todosChanged,
    required TResult Function() saved,
  }) {
    return bodyChanged(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note? note)? initialized,
    TResult Function(String? body)? bodyChanged,
    TResult Function(Color? color)? colorChanged,
    TResult Function(List<TodoPrimitive>? todos)? todosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (bodyChanged != null) {
      return bodyChanged(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_TodosChanged value) todosChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return bodyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (bodyChanged != null) {
      return bodyChanged(this);
    }
    return orElse();
  }
}

abstract class _BodyChanged implements NoteformEvent {
  const factory _BodyChanged({String? body}) = _$_BodyChanged;

  String? get body => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$BodyChangedCopyWith<_BodyChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ColorChangedCopyWith<$Res> {
  factory _$ColorChangedCopyWith(
          _ColorChanged value, $Res Function(_ColorChanged) then) =
      __$ColorChangedCopyWithImpl<$Res>;
  $Res call({Color? color});
}

/// @nodoc
class __$ColorChangedCopyWithImpl<$Res>
    extends _$NoteformEventCopyWithImpl<$Res>
    implements _$ColorChangedCopyWith<$Res> {
  __$ColorChangedCopyWithImpl(
      _ColorChanged _value, $Res Function(_ColorChanged) _then)
      : super(_value, (v) => _then(v as _ColorChanged));

  @override
  _ColorChanged get _value => super._value as _ColorChanged;

  @override
  $Res call({
    Object? color = freezed,
  }) {
    return _then(_ColorChanged(
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc

class _$_ColorChanged implements _ColorChanged {
  const _$_ColorChanged({this.color});

  @override
  final Color? color;

  @override
  String toString() {
    return 'NoteformEvent.colorChanged(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ColorChanged &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(color);

  @JsonKey(ignore: true)
  @override
  _$ColorChangedCopyWith<_ColorChanged> get copyWith =>
      __$ColorChangedCopyWithImpl<_ColorChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note? note) initialized,
    required TResult Function(String? body) bodyChanged,
    required TResult Function(Color? color) colorChanged,
    required TResult Function(List<TodoPrimitive>? todos) todosChanged,
    required TResult Function() saved,
  }) {
    return colorChanged(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note? note)? initialized,
    TResult Function(String? body)? bodyChanged,
    TResult Function(Color? color)? colorChanged,
    TResult Function(List<TodoPrimitive>? todos)? todosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (colorChanged != null) {
      return colorChanged(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_TodosChanged value) todosChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return colorChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (colorChanged != null) {
      return colorChanged(this);
    }
    return orElse();
  }
}

abstract class _ColorChanged implements NoteformEvent {
  const factory _ColorChanged({Color? color}) = _$_ColorChanged;

  Color? get color => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ColorChangedCopyWith<_ColorChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TodosChangedCopyWith<$Res> {
  factory _$TodosChangedCopyWith(
          _TodosChanged value, $Res Function(_TodosChanged) then) =
      __$TodosChangedCopyWithImpl<$Res>;
  $Res call({List<TodoPrimitive>? todos});
}

/// @nodoc
class __$TodosChangedCopyWithImpl<$Res>
    extends _$NoteformEventCopyWithImpl<$Res>
    implements _$TodosChangedCopyWith<$Res> {
  __$TodosChangedCopyWithImpl(
      _TodosChanged _value, $Res Function(_TodosChanged) _then)
      : super(_value, (v) => _then(v as _TodosChanged));

  @override
  _TodosChanged get _value => super._value as _TodosChanged;

  @override
  $Res call({
    Object? todos = freezed,
  }) {
    return _then(_TodosChanged(
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoPrimitive>?,
    ));
  }
}

/// @nodoc

class _$_TodosChanged implements _TodosChanged {
  const _$_TodosChanged({this.todos});

  @override
  final List<TodoPrimitive>? todos;

  @override
  String toString() {
    return 'NoteformEvent.todosChanged(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodosChanged &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todos);

  @JsonKey(ignore: true)
  @override
  _$TodosChangedCopyWith<_TodosChanged> get copyWith =>
      __$TodosChangedCopyWithImpl<_TodosChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note? note) initialized,
    required TResult Function(String? body) bodyChanged,
    required TResult Function(Color? color) colorChanged,
    required TResult Function(List<TodoPrimitive>? todos) todosChanged,
    required TResult Function() saved,
  }) {
    return todosChanged(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note? note)? initialized,
    TResult Function(String? body)? bodyChanged,
    TResult Function(Color? color)? colorChanged,
    TResult Function(List<TodoPrimitive>? todos)? todosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (todosChanged != null) {
      return todosChanged(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_TodosChanged value) todosChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return todosChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (todosChanged != null) {
      return todosChanged(this);
    }
    return orElse();
  }
}

abstract class _TodosChanged implements NoteformEvent {
  const factory _TodosChanged({List<TodoPrimitive>? todos}) = _$_TodosChanged;

  List<TodoPrimitive>? get todos => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TodosChangedCopyWith<_TodosChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$NoteformEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'NoteformEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note? note) initialized,
    required TResult Function(String? body) bodyChanged,
    required TResult Function(Color? color) colorChanged,
    required TResult Function(List<TodoPrimitive>? todos) todosChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note? note)? initialized,
    TResult Function(String? body)? bodyChanged,
    TResult Function(Color? color)? colorChanged,
    TResult Function(List<TodoPrimitive>? todos)? todosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_TodosChanged value) todosChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements NoteformEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$NoteformStateTearOff {
  const _$NoteformStateTearOff();

  _NoteformState call(
      {Note? note,
      bool? isSaving,
      bool? showErrorMessages,
      Either<NoteFailure, Unit>? failureOrSucces,
      bool? isEditting}) {
    return _NoteformState(
      note: note,
      isSaving: isSaving,
      showErrorMessages: showErrorMessages,
      failureOrSucces: failureOrSucces,
      isEditting: isEditting,
    );
  }
}

/// @nodoc
const $NoteformState = _$NoteformStateTearOff();

/// @nodoc
mixin _$NoteformState {
  Note? get note => throw _privateConstructorUsedError;
  bool? get isSaving => throw _privateConstructorUsedError;
  bool? get showErrorMessages => throw _privateConstructorUsedError;
  Either<NoteFailure, Unit>? get failureOrSucces =>
      throw _privateConstructorUsedError;
  bool? get isEditting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteformStateCopyWith<NoteformState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteformStateCopyWith<$Res> {
  factory $NoteformStateCopyWith(
          NoteformState value, $Res Function(NoteformState) then) =
      _$NoteformStateCopyWithImpl<$Res>;
  $Res call(
      {Note? note,
      bool? isSaving,
      bool? showErrorMessages,
      Either<NoteFailure, Unit>? failureOrSucces,
      bool? isEditting});

  $NoteCopyWith<$Res>? get note;
}

/// @nodoc
class _$NoteformStateCopyWithImpl<$Res>
    implements $NoteformStateCopyWith<$Res> {
  _$NoteformStateCopyWithImpl(this._value, this._then);

  final NoteformState _value;
  // ignore: unused_field
  final $Res Function(NoteformState) _then;

  @override
  $Res call({
    Object? note = freezed,
    Object? isSaving = freezed,
    Object? showErrorMessages = freezed,
    Object? failureOrSucces = freezed,
    Object? isEditting = freezed,
  }) {
    return _then(_value.copyWith(
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note?,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool?,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      failureOrSucces: failureOrSucces == freezed
          ? _value.failureOrSucces
          : failureOrSucces // ignore: cast_nullable_to_non_nullable
              as Either<NoteFailure, Unit>?,
      isEditting: isEditting == freezed
          ? _value.isEditting
          : isEditting // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $NoteCopyWith<$Res>? get note {
    if (_value.note == null) {
      return null;
    }

    return $NoteCopyWith<$Res>(_value.note!, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc
abstract class _$NoteformStateCopyWith<$Res>
    implements $NoteformStateCopyWith<$Res> {
  factory _$NoteformStateCopyWith(
          _NoteformState value, $Res Function(_NoteformState) then) =
      __$NoteformStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Note? note,
      bool? isSaving,
      bool? showErrorMessages,
      Either<NoteFailure, Unit>? failureOrSucces,
      bool? isEditting});

  @override
  $NoteCopyWith<$Res>? get note;
}

/// @nodoc
class __$NoteformStateCopyWithImpl<$Res>
    extends _$NoteformStateCopyWithImpl<$Res>
    implements _$NoteformStateCopyWith<$Res> {
  __$NoteformStateCopyWithImpl(
      _NoteformState _value, $Res Function(_NoteformState) _then)
      : super(_value, (v) => _then(v as _NoteformState));

  @override
  _NoteformState get _value => super._value as _NoteformState;

  @override
  $Res call({
    Object? note = freezed,
    Object? isSaving = freezed,
    Object? showErrorMessages = freezed,
    Object? failureOrSucces = freezed,
    Object? isEditting = freezed,
  }) {
    return _then(_NoteformState(
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note?,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool?,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      failureOrSucces: failureOrSucces == freezed
          ? _value.failureOrSucces
          : failureOrSucces // ignore: cast_nullable_to_non_nullable
              as Either<NoteFailure, Unit>?,
      isEditting: isEditting == freezed
          ? _value.isEditting
          : isEditting // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_NoteformState implements _NoteformState {
  const _$_NoteformState(
      {this.note,
      this.isSaving,
      this.showErrorMessages,
      this.failureOrSucces,
      this.isEditting});

  @override
  final Note? note;
  @override
  final bool? isSaving;
  @override
  final bool? showErrorMessages;
  @override
  final Either<NoteFailure, Unit>? failureOrSucces;
  @override
  final bool? isEditting;

  @override
  String toString() {
    return 'NoteformState(note: $note, isSaving: $isSaving, showErrorMessages: $showErrorMessages, failureOrSucces: $failureOrSucces, isEditting: $isEditting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NoteformState &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.failureOrSucces, failureOrSucces) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrSucces, failureOrSucces)) &&
            (identical(other.isEditting, isEditting) ||
                const DeepCollectionEquality()
                    .equals(other.isEditting, isEditting)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(failureOrSucces) ^
      const DeepCollectionEquality().hash(isEditting);

  @JsonKey(ignore: true)
  @override
  _$NoteformStateCopyWith<_NoteformState> get copyWith =>
      __$NoteformStateCopyWithImpl<_NoteformState>(this, _$identity);
}

abstract class _NoteformState implements NoteformState {
  const factory _NoteformState(
      {Note? note,
      bool? isSaving,
      bool? showErrorMessages,
      Either<NoteFailure, Unit>? failureOrSucces,
      bool? isEditting}) = _$_NoteformState;

  @override
  Note? get note => throw _privateConstructorUsedError;
  @override
  bool? get isSaving => throw _privateConstructorUsedError;
  @override
  bool? get showErrorMessages => throw _privateConstructorUsedError;
  @override
  Either<NoteFailure, Unit>? get failureOrSucces =>
      throw _privateConstructorUsedError;
  @override
  bool? get isEditting => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NoteformStateCopyWith<_NoteformState> get copyWith =>
      throw _privateConstructorUsedError;
}
