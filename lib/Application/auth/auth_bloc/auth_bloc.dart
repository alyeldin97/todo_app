import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/Domain/auth/i_auth_facade.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  IAuthFacade _iAuthFacade;
  AuthBloc(this._iAuthFacade) : super(const AuthState.initial());

  static AuthBloc get(context) {
    return BlocProvider.of(context);
  }

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(authCheckRequested: (event) async* {
      final userOption = _iAuthFacade.getSignedInUser();
      yield userOption.fold(() => const AuthState.unauthenticated(),
          (a) => const AuthState.authenticated());
    }, signedOut: (event) async* {
      await _iAuthFacade.signOut();
      yield const AuthState.unauthenticated();
    });
  }
}
