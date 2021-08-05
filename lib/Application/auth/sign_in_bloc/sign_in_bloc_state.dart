part of 'sign_in_bloc_bloc.dart';

@freezed
class SignInBlocState with _$SignInBlocState {
  const factory SignInBlocState({
    Email? email,
    Password? password,
    bool? isSubmitting,
    bool? showErrorMessages,
    Option<Either<AuthFailure, Unit>>? authFailureOrSuccessOption,
  }) = _SignInFormState;

  factory SignInBlocState.initial() => SignInBlocState(
        email: Email(rawEmail: ''),
        password: Password(rawPassword: ''),
        isSubmitting: false,
        showErrorMessages: false,
        authFailureOrSuccessOption: none(),
      );
}
