//Return Eithe The Validated raw value or a failure

import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:todo_app/Domain/core/value_failure.dart';

Either<ValueFailure,String> validateEmail(String rawEmail){
  const emailRegex= r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if(RegExp(emailRegex).hasMatch(rawEmail)){
    return right(rawEmail);
  }else{
    return left(const ValueFailure.invalidEmail());
  }
}

Either<ValueFailure<String>,String> validatePassword(String rawPassword){
  if(rawPassword.length <6){
    return left(const ValueFailure.shortPassword());
  }else{
    return right(rawPassword);
  }
}

Either<ValueFailure<String>,String> validateExceedingLength(String input,int maxLength){
  if(input.length<=maxLength){
    return right(input);
  }else{
    return left(const ValueFailure.exceedingLength());
  }
}

Either<ValueFailure<KtList>,KtList> validateListLength(KtList input,int maxLength){
  if(input.size<=maxLength){
    return right(input);
  }else{
    return left(const ValueFailure.listTooLong());
  }
}

Either<ValueFailure<String>,String> validateMultiLine(String input){
  if(input.contains('\n')){
    return left(const ValueFailure.multiLine());
  }else{
    return right(input);
  }
}

Either<ValueFailure<String>,String> validateNotEmpty(String input){
  if(input.isEmpty){
    return left(const ValueFailure.empty());
  }else{
    return right(input);
  }
}