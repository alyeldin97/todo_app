part of 'noteform_bloc.dart';

@freezed
class NoteformEvent with _$NoteformEvent {
  const factory NoteformEvent.initialized({Note? note}) = _Initialized;
  const factory NoteformEvent.bodyChanged({String? body}) = _BodyChanged;
  const factory NoteformEvent.colorChanged({Color? color}) = _ColorChanged;

  const factory NoteformEvent.todosChanged({List<TodoPrimitive>? todos}) =
      _TodosChanged;

  const factory NoteformEvent.saved() = _Saved;
}
