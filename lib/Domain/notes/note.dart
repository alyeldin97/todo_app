import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:todo_app/Domain/auth/value_objects.dart';
import 'package:todo_app/Domain/core/value_failure.dart';
import 'package:todo_app/Domain/notes/value_objects.dart';
part 'note.freezed.dart';

@freezed
class Note with _$Note {
  const Note._();

  const factory Note({
    @required UniqueId? id,
    @required NoteBody? noteBody,
    @required NoteColor? noteColor,
    @required TodoListOf3? todoListOf3,
    @required String? dateTime,
  }) = _Note;

  factory Note.empty() => Note(
      dateTime: DateTime.now().toString(),
      id: UniqueId(),
      noteBody: NoteBody(''),
      noteColor: NoteColor(Colors.white),
      todoListOf3: TodoListOf3(emptyList()));

  Option<ValueFailure<dynamic>> failureOption() {
    return noteBody!.failureOrUnit
        .andThen(todoListOf3!.failureOrUnit)
        .andThen(
          todoListOf3!
              .getOrCrash()
              // Getting the failureOption from the TodoItem ENTITY - NOT a failureOrUnit from a VALUE OBJECT
              .map((todoItem) => todoItem.failureOption)
              .filter((o) => o.isSome())
              // If we can't get the 0th element, the list is empty. In such a case, it's valid.
              .getOrElse(0, (_) => none())
              .fold(() => right(unit), (f) => left(f)),
        )
        .fold((f) => some(f), (r) => none());
  }

 
}
