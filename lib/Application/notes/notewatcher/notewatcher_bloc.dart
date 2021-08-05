import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:todo_app/Domain/notes/i_note_repository.dart';
import 'package:todo_app/Domain/notes/note.dart';
import 'package:todo_app/Domain/notes/note_failure.dart';

part 'notewatcher_event.dart';
part 'notewatcher_state.dart';
part 'notewatcher_bloc.freezed.dart';

class NotewatcherBloc extends Bloc<NotewatcherEvent, NotewatcherState> {
  final INoteRepository _iNoteRepository;
  StreamSubscription? _streamSubscription;
  NotewatcherBloc(this._iNoteRepository)
      : super(const NotewatcherState.initial());

  @override
  Stream<NotewatcherState> mapEventToState(
    NotewatcherEvent event,
  ) async* {
    yield* event.map(watchAllStarted: (event) async* {
      yield const NotewatcherState.loadInProgress();
      _streamSubscription =
          _iNoteRepository.watchAllNotes().listen((failureOrNote) {
        add(_NotesReceived(failureOrNote: failureOrNote));
      });
    }, watchUncompletedStarted: (event) async* {
      yield const NotewatcherState.loadInProgress();
      await _streamSubscription?.cancel();
      _streamSubscription =
          _iNoteRepository.watchUncompletedNotes().listen((failureOrNote) {
        add(_NotesReceived(failureOrNote: failureOrNote));
      });
    }, notesReceived: (event) async* {
      yield event.failureOrNote!.fold(
          (f) => NotewatcherState.loadError(noteFailure: f),
          (notes) => NotewatcherState.loadSuccess(notes: notes));
    });
  }

  @override
  Future<void> close() async {
    await _streamSubscription?.cancel();
    return super.close();
  }
}
