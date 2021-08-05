import 'package:todo_app/Domain/core/value_failure.dart';
class NotAuthenticatedError extends Error{}

class UnExpectedValueError extends Error{
   final ValueFailure valueFailure;

  UnExpectedValueError(this.valueFailure);
  
  @override
  String toString() {
      const String explanation ='Encountered a value failure at an unrecoverable point';
      return '$explanation . Terminating , Failure was: $valueFailure';
  }
}