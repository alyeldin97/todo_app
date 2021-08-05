part of 'noteform_bloc.dart';

@freezed
class NoteformState with _$NoteformState {
  const factory NoteformState({
    Note? note,
    bool? isSaving,
    bool? showErrorMessages,
    Either<NoteFailure, Unit>? failureOrSucces,
    bool? isEditting,
  }) = _NoteformState;

  factory NoteformState.initial() => NoteformState(
        note: Note.empty(),
        isEditting: false,
        isSaving: false,
        failureOrSucces: null,
        showErrorMessages: false,
      );
}
