import 'package:freezed_annotation/freezed_annotation.dart';
part 'Auth_Failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure{
  const factory AuthFailure.cancelledByUser() = _CancelledByUser;
    const factory AuthFailure.serverError() = _ServerError;

  const factory AuthFailure.emailAlreadyInUse() = _EmailAlreadyInUse;

  const factory AuthFailure.invalidEmailAndPasswordCombination() = _InvalidEmaiLAndPasswordCombination;


}