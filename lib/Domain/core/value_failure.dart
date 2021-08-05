import 'package:freezed_annotation/freezed_annotation.dart';
part 'value_failure.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure {
  const factory ValueFailure.invalidEmail() = _InvalidEmail;
  const factory ValueFailure.shortPassword() = _ShortPassword;
  const factory ValueFailure.exceedingLength({T? failedValue ,int? maxLength}) = _ExceedingLength;
  const factory ValueFailure.empty({T? failedValue}) = _Empty;

  const factory ValueFailure.listTooLong({T? failedValue,int? maxLength}) = _ListTooLong;

  const factory ValueFailure.multiLine({T? failedValue}) = _MultiLine;
}
