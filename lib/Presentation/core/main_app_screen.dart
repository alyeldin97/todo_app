import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:todo_app/Application/auth/auth_bloc/auth_bloc.dart';
import 'package:todo_app/InfraStructure/auth/firebase_auth_facade.dart';
import 'package:todo_app/Presentation/note/notes_overview/notes_overview_screen.dart';
import 'package:todo_app/Presentation/sign_in/login_screen.dart';
import 'package:todo_app/Presentation/splash/splash_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => AuthBloc(
                FirebaseAuthFacade(FirebaseAuth.instance, GoogleSignIn()))
              ..add(const AuthCheckRequested())),
      ],
      child: MaterialApp(
        routes: {
          LoginScreen.ROUTE_NAME: (context) => LoginScreen(),
          SplashScreen.ROUTE_NAME: (context) => SplashScreen(),
          NotesOverViewScreen.ROUTE_NAME: (context) => NotesOverViewScreen(),
        },
        title: 'Todo App',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.white),
              centerTitle: true,
              color: Colors.amber),
          primaryColor: Colors.amber,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
            ),
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.amber),
        ),
        initialRoute: SplashScreen.ROUTE_NAME,
      ),
    );
  }
}
