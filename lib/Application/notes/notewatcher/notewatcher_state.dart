part of 'notewatcher_bloc.dart';

@freezed
class NotewatcherState with _$NotewatcherState {
  const factory NotewatcherState.initial() = _Initial;
  const factory NotewatcherState.loadInProgress() = _LoadInProgress;

  const factory NotewatcherState.loadSuccess({KtList<Note>? notes}) = _LoadSuccess;
  const factory NotewatcherState.loadError({NoteFailure? noteFailure}) = _LoadError;
}
