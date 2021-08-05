import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/Domain/auth/Auth_Failure.dart';
import 'package:todo_app/Domain/auth/i_auth_facade.dart';
import 'package:todo_app/Domain/auth/value_objects.dart';
part 'sign_in_bloc_event.dart';
part 'sign_in_bloc_state.dart';
part 'sign_in_bloc_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInBlocEvent, SignInBlocState> {
  final IAuthFacade _iAuthFacade;

  SignInBloc(this._iAuthFacade) : super(SignInBlocState.initial());
  static SignInBloc get(context) {
    return BlocProvider.of(context);
  }

  SignInBlocState get initialState => SignInBlocState.initial();

  @override
  Stream<SignInBlocState> mapEventToState(
    SignInBlocEvent event,
  ) async* {
    yield* event.map(
      //UPDATE EMAIL VALIDATOR ON RAW DATA CHANGES

      emailChanged: (e) async* {
        yield state.copyWith(
            email: Email(rawEmail: e.rawEmail),
            isSubmitting: false,
           
            authFailureOrSuccessOption: none());
      },
      //UPDATE Password VALIDATOR ON RAW DATA CHANGES

      passwordChanged: (e) async* {
        yield state.copyWith(
            password: Password(
              rawPassword: e.rawPassword,
            ),
            isSubmitting: false,
            
            authFailureOrSuccessOption: none());
      },

      // START SHOWING LOADING INDICATOR, ERROR MESSAGES, RETURN SIGNIN FIREBASE AUTHENTICATION VALUE OR FAILURE
      signInWithEmailAndPasswordPressed: (e) async* {
        yield* signInOrRegister(_iAuthFacade.signInWithEmailAndPassword);
      },
      // START SHOWING LOADING INDICATOR, ERROR MESSAGES, RETURN CREATE USER FIREBASE AUTHENTICATION VALUE OR FAILURE

      registerWithEmailAndPasswordPressed: (e) async* {
      
        yield* signInOrRegister(_iAuthFacade.registerWithEmailAndPassword);
      },

      // SHOW GOOGLE SIGN IN WINDOW,LOADING, ERROR MESSAGES, RETURN CREATE USER FIREBASE AUTHENTICATION VALUE OR FAILURE

      signInWithGooglePressed: (e) async* {
        yield state.copyWith(
            isSubmitting: true, authFailureOrSuccessOption: none());
        final failureOrSuccess = await _iAuthFacade.signInWithGoogle();
        yield state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            authFailureOrSuccessOption: some(failureOrSuccess!));
      },
    );
  }

  Stream<SignInBlocState> signInOrRegister(
      Future<Either<AuthFailure, Unit>>? Function(
              {@required Email? email,@required Password? password})?
          signInOrRegister) async* {
    final emailIsValid = state.email!.isValid();
    final passwordIsValid = state.password!.isValid();
    if (emailIsValid && passwordIsValid) {
      //Loading State
      yield state.copyWith(
          isSubmitting: true, authFailureOrSuccessOption: none());
      
      final failureOrSuccess;
      failureOrSuccess = await signInOrRegister!(
          email: state.email, password: state.password);
      //Success or Error State
      yield state.copyWith(
          showErrorMessages: true,
          isSubmitting: false,
          authFailureOrSuccessOption: some(failureOrSuccess));
    }
    yield state.copyWith(showErrorMessages: true,isSubmitting: false);
  }
}
