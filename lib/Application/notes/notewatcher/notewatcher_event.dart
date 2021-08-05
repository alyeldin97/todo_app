part of 'notewatcher_bloc.dart';

@freezed
class NotewatcherEvent with _$NotewatcherEvent {
  const factory NotewatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory NotewatcherEvent.watchUncompletedStarted() =
      _WatchUncompletedStarted;
  const factory NotewatcherEvent.notesReceived({Either<NoteFailure,KtList<Note>>? failureOrNote}) = _NotesReceived;
}
