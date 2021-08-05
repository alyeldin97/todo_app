import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rxdart/rxdart.dart';
import 'package:kt_dart/kt.dart';
import 'package:dartz/dartz.dart';
import 'package:todo_app/Domain/notes/i_note_repository.dart';
import 'package:todo_app/Domain/notes/note_failure.dart';
import 'package:todo_app/Domain/notes/note.dart';
import 'package:todo_app/InfraStructure/core/firestore_helpers.dart';
import 'package:todo_app/InfraStructure/notes/note_dtos.dart';

class NoteRepository implements INoteRepository {
  FireStoreHelper _fireStoreHelper;
  NoteRepository(this._fireStoreHelper);

  @override
  Stream<Either<NoteFailure, KtList<Note>>> watchAllNotes() async* {
    yield* _fireStoreHelper
        .getNotesCollection()
        .orderBy('dateTime', descending: true)
        .snapshots()
        .map((snapshots) => right<NoteFailure, KtList<Note>>(snapshots.docs
            .map((doc) => NoteDTO.fromFireStore(doc).toDomain())
            .toImmutableList()))
        .onErrorReturnWith((e, stackTrace) {
      if (e is FirebaseException && e.message == 'PERMISSION_DENIED') {
        return left(const NoteFailure.insufficientPermission());
      } else {
        // log.error(e.toString());
        return left(const NoteFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<NoteFailure, KtList<Note>>> watchUncompletedNotes() async* {
    yield* _fireStoreHelper
        .getNotesCollection()
        .orderBy('dateTime')
        .snapshots()
        .map(
          (snapshot) =>
              snapshot.docs.map((doc) => NoteDTO.fromFireStore(doc).toDomain()),
        )
        .map((notes) => right<NoteFailure, KtList<Note>>(notes
            .where((note) =>
                note.todoListOf3!.getOrCrash().any((todo) => !todo.done))
            .toImmutableList()))
        .onErrorReturnWith((e, stackTrace) {
      if (e is FirebaseException && e.message == 'PERMISSION_DENIED') {
        return left(const NoteFailure.insufficientPermission());
      } else {
        // log.error(e.toString());
        return left(const NoteFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<NoteFailure, Unit>> createNote(Note note) async {
    final noteDTO = NoteDTO.fromDomain(note);
    try {
      await _fireStoreHelper
          .getNotesCollection()
          .doc(noteDTO.id)
          .set(noteDTO.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message == 'PERMISSION_DENIED') {
        return left(const NoteFailure.insufficientPermission());
      } else {
        return left(const NoteFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> deleteNote(Note note) async{
    final noteDTO = NoteDTO.fromDomain(note);
    try {
      await _fireStoreHelper
          .getNotesCollection()
          .doc(noteDTO.id)
          .update(noteDTO.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message == 'PERMISSION_DENIED') {
        return left(const NoteFailure.insufficientPermission());
      } else if (e.message == 'NOT_FOUND'){
        return left(const NoteFailure.unableToUpdate());
      }else {
        return left(const NoteFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> updateNote(Note note)async {
    final id = NoteDTO.fromDomain(note).id;
    try {
      await _fireStoreHelper
          .getNotesCollection()
          .doc(id)
          .delete();
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message == 'PERMISSION_DENIED') {
        return left(const NoteFailure.insufficientPermission());
      } else if (e.message == 'NOT_FOUND'){
        return left(const NoteFailure.unableToUpdate());
      }else {
        return left(const NoteFailure.unexpected());
      }
    }
  }
}
