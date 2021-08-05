import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:todo_app/Domain/notes/note.dart';
import 'package:todo_app/Domain/notes/note_failure.dart';

abstract class INoteRepository {
  Stream<Either<NoteFailure, KtList<Note>>> watchAllNotes();
  Stream<Either<NoteFailure, KtList<Note>>> watchUncompletedNotes();
  Future<Either<NoteFailure, Unit>> createNote(Note note);
  Future<Either<NoteFailure, Unit>> deleteNote(Note note);

  Future<Either<NoteFailure, Unit>> updateNote(Note note);
}

