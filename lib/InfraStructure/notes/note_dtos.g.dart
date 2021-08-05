// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NoteDTO _$_$_NoteDTOFromJson(Map<String, dynamic> json) {
  return _$_NoteDTO(
    body: json['body'] as String?,
    color: json['color'] as int?,
    todos: (json['todos'] as List<dynamic>?)
        ?.map((e) => TodoItemDTO.fromJson(e as Map<String, dynamic>))
        .toList(),
    dateTime: json['dateTime'] as String?,
  );
}

Map<String, dynamic> _$_$_NoteDTOToJson(_$_NoteDTO instance) =>
    <String, dynamic>{
      'body': instance.body,
      'color': instance.color,
      'todos': instance.todos,
      'dateTime': instance.dateTime,
    };

_$_TodoItemDTO _$_$_TodoItemDTOFromJson(Map<String, dynamic> json) {
  return _$_TodoItemDTO(
    id: json['id'] as String?,
    todoName: json['todoName'] as String?,
    done: json['done'] as bool?,
  );
}

Map<String, dynamic> _$_$_TodoItemDTOToJson(_$_TodoItemDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'todoName': instance.todoName,
      'done': instance.done,
    };
