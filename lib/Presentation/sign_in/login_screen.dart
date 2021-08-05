import 'package:another_flushbar/flushbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:todo_app/Application/auth/auth_bloc/auth_bloc.dart';
import 'package:todo_app/Application/auth/sign_in_bloc/sign_in_bloc_bloc.dart';
import 'package:todo_app/InfraStructure/auth/firebase_auth_facade.dart';
import 'package:todo_app/Presentation/core/reusable_components.dart';
import 'package:todo_app/Presentation/note/notes_overview/notes_overview_screen.dart';

class LoginScreen extends StatelessWidget {
  static const ROUTE_NAME = 'login_screen';
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return BlocProvider(
      create: (context) =>
          SignInBloc(FirebaseAuthFacade(FirebaseAuth.instance, GoogleSignIn())),
      child: BlocConsumer<SignInBloc, SignInBlocState>(
        listener: (context, state) {
          state.authFailureOrSuccessOption!.fold(
              () {},
              (either) => either.fold((failure) {
                    Flushbar(
                      message: failure.map(
                          cancelledByUser: (_) => 'Cancelled By User',
                          serverError: (_) => 'Server Error',
                          emailAlreadyInUse: (_) => 'Email Already In Use',
                          invalidEmailAndPasswordCombination: (_) =>
                              'Invalid Email And Password Combination'),
                      duration: Duration(seconds: 2),
                    ).show(context);
                  }, (unit) {
                    Navigator.pushReplacementNamed(context, NotesOverViewScreen.ROUTE_NAME);
                    AuthBloc.get(context).add(const AuthEvent.authCheckRequested());
                  }));
        },
        builder: (context, state) {
          var bloc = SignInBloc.get(context);
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                'Todo App',
                style: TextStyle(color: Colors.white),
              ),
            ),
            body: Form(
              autovalidateMode: state.showErrorMessages!
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 200,
                        height: 200,
                        child: Image.asset('assets/images/todo.png'),
                      ),
                      height(h * 0.05),
                      buildTextFormField(
                        w,
                        hint: 'Email',
                        prefixIcon: Icons.person,
                        onChanged: (rawEmail) {
                          bloc.add(
                              SignInBlocEvent.emailChanged(rawEmail: rawEmail));
                        },
                        validate: (String? rawEmail) {
                          return bloc.state.email!.value.fold(
                            (failure) => failure.maybeMap(
                                invalidEmail: (_) => 'invalid email',
                                orElse: () => null),
                            (_) => null,
                          );
                        },
                      ),
                      height(h * 0.01),
                      buildTextFormField(w, hint: 'Password',
                          validate: (String? rawPassword) {
                        return bloc.state.password!.value.fold(
                          (failure) => failure.maybeMap(
                              shortPassword: (_) => 'short password',
                              orElse: () => null),
                          (_) => null,
                        );
                      }, onChanged: (rawPassword) {
                        bloc.add(SignInBlocEvent.passwordChanged(
                            rawPassword: rawPassword));
                      },
                          prefixIcon: Icons.lock,
                          suffixIcon: IconButton(
                              onPressed: () {}, icon: Icon(Icons.visibility))),
                      height(h * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                bloc.add(SignInBlocEvent
                                    .signInWithEmailAndPasswordPressed());
                              },
                              child: Text('Sign In')),
                          ElevatedButton(
                              onPressed: () {
                                bloc.add(SignInBlocEvent
                                    .registerWithEmailAndPasswordPressed());
                              },
                              child: Text('Register')),
                        ],
                      ),
                      height(h * 0.01),
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.blue)),
                          onPressed: () {
                            bloc.add(SignInBlocEvent.signInWithGooglePressed());
                          },
                          child: Text(
                            'Sign In With Google',
                          )),
                      ElevatedButton(
                          onPressed: () {
                            print(state.showErrorMessages);
                          },
                          child: Text('Tester')),
                      height(h * 0.05),
                      if (state.isSubmitting!)
                        const CircularProgressIndicator(),

                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
