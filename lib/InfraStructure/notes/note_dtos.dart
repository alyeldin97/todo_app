import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/Domain/auth/value_objects.dart';
import 'package:todo_app/Domain/notes/note.dart';
import 'package:todo_app/Domain/notes/todo.dart';
import 'package:todo_app/Domain/notes/value_objects.dart';
import 'package:kt_dart/kt.dart';
part 'note_dtos.freezed.dart';
part 'note_dtos.g.dart';

@freezed
class NoteDTO with _$NoteDTO {
  const NoteDTO._();
  const factory NoteDTO({
    @JsonKey(ignore: true) String? id,
    @required String? body,
    @required int? color,
    @required List<TodoItemDTO>? todos,
    @required String? dateTime,
  }) = _NoteDTO;

  factory NoteDTO.fromDomain(Note note) {
    return NoteDTO(
      id: note.id!.getOrCrash(),
      dateTime:note.dateTime,
      body: note.noteBody!.getOrCrash(),
      color: note.noteColor!.getOrCrash().value,
      todos: note.todoListOf3!
          .getOrCrash()
          .map((todoItem) => TodoItemDTO.fromDomain(todoItem))
          .asList(),
    );
  }

  Note toDomain() {
    return Note(
      dateTime: dateTime,
      id: UniqueId.fromUniqueString(id),
      noteBody: NoteBody(body!),
      noteColor: NoteColor(Color(color!)),
      todoListOf3: TodoListOf3(
          todos!.map((todoDto) => todoDto.toDomain()).toImmutableList()),
    );
  }

  factory NoteDTO.fromJson(Map<String, dynamic> json) =>
      _$NoteDTOFromJson(json);
  
  factory NoteDTO.fromFireStore(DocumentSnapshot doc){
    return NoteDTO.fromJson(doc.data() as Map<String,dynamic>).copyWith(id: doc.id);
  }
}

@freezed
class TodoItemDTO with _$TodoItemDTO {
  const TodoItemDTO._();
  const factory TodoItemDTO({
    String? id,
    String? todoName,
    bool? done,
  }) = _TodoItemDTO;

  factory TodoItemDTO.fromDomain(TodoItem todoItem) {
    return TodoItemDTO(
        done: todoItem.done,
        id: todoItem.id!.getOrCrash(),
        todoName: todoItem.todoName!.getOrCrash());
  }

  TodoItem toDomain() {
    return TodoItem(
        id: UniqueId.fromUniqueString(id),
        todoName: TodoName(todoName!),
        done: done);
  }

  factory TodoItemDTO.fromJson(Map<String, dynamic> json) =>
      _$TodoItemDTOFromJson(json);
}
