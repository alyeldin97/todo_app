import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/Domain/notes/i_note_repository.dart';
import 'package:todo_app/Domain/notes/note.dart';
import 'package:todo_app/Domain/notes/note_failure.dart';
import 'package:todo_app/Domain/notes/value_objects.dart';
import 'package:todo_app/Presentation/note/note_form/misc/todo_primitive.dart';

part 'noteform_event.dart';
part 'noteform_state.dart';
part 'noteform_bloc.freezed.dart';

class NoteformBloc extends Bloc<NoteformEvent, NoteformState> {
  final INoteRepository _iNoteRepository;
  NoteformBloc(this._iNoteRepository) : super(NoteformState.initial());

  @override
  Stream<NoteformState> mapEventToState(
    NoteformEvent event,
  ) async* {
    event.map(
      initialized: (event) async* {
        yield event.note == null
            ? state
            : state.copyWith(
                note: event.note,
                isEditting: true,
              );
      },
      bodyChanged: (event) async* {
        yield state.copyWith(
          note: state.note!.copyWith(
            noteBody: NoteBody(event.body!),
          ),
          failureOrSucces: null,
        );
      },
      colorChanged: (event) async* {
        yield state.copyWith(
          note: state.note!.copyWith(
            noteColor: NoteColor(event.color!),
          ),
          failureOrSucces: null,
        );
      },
      todosChanged: (event) async* {
        yield state.copyWith(
          note: state.note!.copyWith(
              todoListOf3:
                  TodoListOf3(event.todos!.map((todo) => todo.toDomain()))),
          failureOrSucces: null,
        );
      },
      saved: (event) async* {
        yield state.copyWith(isSaving: true, failureOrSucces: null);
        var failureOrSuccess;
        if (state.note!.failureOption().isNone()) {
          failureOrSuccess = state.isEditting!
              ? await _iNoteRepository.updateNote(state.note!)
              : await _iNoteRepository.createNote(state.note!);
        }
        yield state.copyWith(
          failureOrSucces: failureOrSuccess,
          isSaving: false,
          showErrorMessages: true,
          
        );
      },
    );
  }
}
