import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/Domain/auth/value_objects.dart';
part 'user.freezed.dart';
@freezed
class User with _$User{
  const factory User({
    @required UniqueId? id,
  }) = _User;
}