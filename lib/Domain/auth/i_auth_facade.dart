import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/Domain/auth/user.dart';
import 'package:todo_app/Domain/auth/value_objects.dart';

import 'Auth_Failure.dart';

abstract class IAuthFacade {
  Option<User?> getSignedInUser();
  Future<Either<AuthFailure, Unit>>? signInWithEmailAndPassword(
      {@required Email? email, @required Password? password});
  Future<Either<AuthFailure, Unit>>? registerWithEmailAndPassword(
      {@required Email? email, @required Password? password});

  Future<Either<AuthFailure, Unit>>? signInWithGoogle();

  Future<void> signOut();
}
