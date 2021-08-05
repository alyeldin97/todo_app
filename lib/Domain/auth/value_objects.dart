import 'package:todo_app/Domain/core/value_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:todo_app/Domain/core/value_object.dart';
import 'package:todo_app/Domain/core/value_validators.dart';
import 'package:uuid/uuid.dart';

class Email extends ValueObject {
  @override
  final Either<ValueFailure, String> value;
  const Email._(this.value);
  factory Email({String? rawEmail}) {
    return Email._(validateEmail(rawEmail!));
  }
}

class Password extends ValueObject {
  @override
  final Either<ValueFailure, String> value;

  const Password._(this.value);

  factory Password({String? rawPassword}) {
    return Password._(validatePassword(rawPassword!));
  }
}

class UniqueId extends ValueObject {
  @override
  final Either<ValueFailure, String> value;

  const UniqueId._(this.value);

  factory UniqueId.fromUniqueString(String? uniqueId){
    assert(uniqueId!=null);
    return UniqueId._(right(uniqueId!));
  }

  factory UniqueId(){
    return UniqueId._(right(Uuid().v1()));
  }
}
