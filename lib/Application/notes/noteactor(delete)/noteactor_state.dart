part of 'noteactor_bloc.dart';

@freezed
class NoteactorState with _$NoteactorState {
  const factory NoteactorState.initial() = _Initial;
  const factory NoteactorState.actionInProgress() = _ActionInProgress;

  const factory NoteactorState.deleteSuccess() = _DeleteSuccess;

  const factory NoteactorState.deleteError({NoteFailure? noteFailure}) = _DeleteError;
}
