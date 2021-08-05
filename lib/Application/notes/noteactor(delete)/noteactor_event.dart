part of 'noteactor_bloc.dart';

@freezed
class NoteactorEvent with _$NoteactorEvent {
  const factory NoteactorEvent.deletePressed({Note? note}) = _DeletePressed;
}