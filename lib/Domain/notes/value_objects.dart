import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';
import 'package:todo_app/Domain/core/value_failure.dart';
import 'package:todo_app/Domain/core/value_object.dart';
import 'package:todo_app/Domain/core/value_validators.dart';

class NoteBody extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 1000;

  factory NoteBody(String input) {
    return NoteBody._(
        validateExceedingLength(input, maxLength).flatMap(validateNotEmpty));
  }
  const NoteBody._(this.value);
}

class TodoName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  const TodoName._(this.value);
  static const maxLength = 30;
  factory TodoName(String input) {
    return TodoName._(validateExceedingLength(input, maxLength)
        .flatMap(validateMultiLine)
        .flatMap(validateNotEmpty));
  }
}

class NoteColor extends ValueObject<Color> {
  @override
  final Either<ValueFailure<Color>, Color> value;
  static const maxLength = 1000;

  factory NoteColor(Color input) {
    return NoteColor._(right(input));
  }
  const NoteColor._(this.value);
}

class TodoListOf3 extends ValueObject<KtList> {
  final Either<ValueFailure<KtList>, KtList> value;
  const TodoListOf3._(this.value);
  static const int maxLength = 3;
  factory TodoListOf3(input) {
    return TodoListOf3._(validateListLength(input, maxLength));
  }

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool isFull(){
    return length==maxLength;
  }
}
