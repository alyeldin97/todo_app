import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/Application/auth/auth_bloc/auth_bloc.dart';
import 'package:todo_app/Presentation/note/notes_overview/notes_overview_screen.dart';
import 'package:todo_app/Presentation/sign_in/login_screen.dart';

class SplashScreen extends StatelessWidget {
  static const ROUTE_NAME = 'splash_screen';
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc,AuthState>(
      listener: (context,state){
        state.map(initial:(_){} , authenticated: (_){
          //TODO CHANGE NAVIGATION TO HOME
          Navigator.of(context).pushReplacementNamed(NotesOverViewScreen.ROUTE_NAME);
          
        } , unauthenticated:(_){
            Navigator.of(context).pushReplacementNamed(LoginScreen.ROUTE_NAME);
        }  );
      },
      child: const Center(child: CircularProgressIndicator(color: Colors.green,),),
    );
  }
}