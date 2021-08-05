part of 'sign_in_bloc_bloc.dart';

@freezed
class SignInBlocEvent with _$SignInBlocEvent {
  const factory SignInBlocEvent.emailChanged({String? rawEmail}) = _EmailChanged;
  const factory SignInBlocEvent.passwordChanged({String? rawPassword}) = _PasswordChnaged;
  const factory SignInBlocEvent.signInWithEmailAndPasswordPressed() = _SignInWithEmailAndPasswordPressed;
  const factory SignInBlocEvent.registerWithEmailAndPasswordPressed() = _RegisterWithEmailAndPasswordPressed;
  const factory SignInBlocEvent.signInWithGooglePressed() = _SignInWithGoogle;

}

