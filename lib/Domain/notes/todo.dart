import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/Domain/auth/value_objects.dart';
import 'package:todo_app/Domain/core/value_failure.dart';
import 'package:todo_app/Domain/notes/value_objects.dart';

part 'todo.freezed.dart';

@freezed
class TodoItem with _$TodoItem{
  const TodoItem._();
  const factory TodoItem({
    @required UniqueId? id,
    @required TodoName? todoName,
    @required bool? done,
  }) = _TodoItem;

  Option<ValueFailure<dynamic>> get failureOption{
    return todoName!.value.fold((f) => some(f), (r) => none());
  }

  
}