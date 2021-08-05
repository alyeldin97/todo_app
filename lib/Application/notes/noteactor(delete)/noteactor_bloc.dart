import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/Application/notes/notewatcher/notewatcher_bloc.dart';
import 'package:todo_app/Domain/notes/i_note_repository.dart';
import 'package:todo_app/Domain/notes/note.dart';
import 'package:todo_app/Domain/notes/note_failure.dart';

part 'noteactor_event.dart';
part 'noteactor_state.dart';
part 'noteactor_bloc.freezed.dart';

class NoteactorBloc extends Bloc<NoteactorEvent, NoteactorState> {
  final INoteRepository _iNoteRepository;

  NoteactorBloc(this._iNoteRepository) : super(const NoteactorState.initial());

  @override
  Stream<NoteactorState> mapEventToState(
    NoteactorEvent event,
  ) async* {
    yield const NoteactorState.actionInProgress();
    final failureOrUnit = await _iNoteRepository.deleteNote(event.note!);
    failureOrUnit.fold((f) => NotewatcherState.loadError(noteFailure: f),
        (unit) => const NotewatcherState.loadSuccess());
  }
}
