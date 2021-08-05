import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/Domain/auth/value_objects.dart';
import 'package:todo_app/Domain/notes/todo.dart';
import 'package:todo_app/Domain/notes/value_objects.dart';
part 'todo_primitive.freezed.dart';

@freezed
class TodoPrimitive with _$TodoPrimitive {
  const TodoPrimitive._();
  const factory TodoPrimitive({
    UniqueId? id,
    String? name,
    bool? done,
  }) = _TodoPrimitive;

  factory TodoPrimitive.empty() {
    return TodoPrimitive(done: false, id: UniqueId(), name: '');
  }

  factory TodoPrimitive.fromDomain(TodoItem todo) {
    return TodoPrimitive(
      name: todo.todoName!.getOrCrash(),
      id: todo.id,
      done: todo.done,
    );
  }

  TodoItem toDomain(){
    return TodoItem(done: done,id: id,todoName: TodoName(name!));
  }
}
