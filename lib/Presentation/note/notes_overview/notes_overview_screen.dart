import 'package:another_flushbar/flushbar_helper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:todo_app/Application/auth/auth_bloc/auth_bloc.dart';
import 'package:todo_app/Application/notes/noteactor(delete)/noteactor_bloc.dart';
import 'package:todo_app/Application/notes/noteform/noteform_bloc.dart';
import 'package:todo_app/Application/notes/notewatcher/notewatcher_bloc.dart';
import 'package:todo_app/Domain/auth/value_objects.dart';
import 'package:todo_app/Domain/notes/note.dart';
import 'package:todo_app/Domain/notes/todo.dart';
import 'package:todo_app/Domain/notes/value_objects.dart';
import 'package:todo_app/InfraStructure/core/firestore_helpers.dart';
import 'package:todo_app/InfraStructure/notes/note_dtos.dart';
import 'package:todo_app/InfraStructure/notes/note_repository.dart';
import 'package:todo_app/Presentation/note/notes_overview/widgets/notes_overview_body.dart';
import 'package:todo_app/Presentation/sign_in/login_screen.dart';

class NotesOverViewScreen extends StatelessWidget {
  static const ROUTE_NAME = 'notes_overview_screen';
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => NotewatcherBloc(
                NoteRepository(FireStoreHelper(FirebaseFirestore.instance)))
              ..add(const NotewatcherEvent.watchAllStarted())),
        BlocProvider(
            create: (context) => NoteactorBloc(
                NoteRepository(FireStoreHelper(FirebaseFirestore.instance)))),
        BlocProvider(
            create: (context) => NoteformBloc(
                NoteRepository(FireStoreHelper(FirebaseFirestore.instance)))),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(listener: (context, state) {
            state.maybeMap(
                orElse: () {},
                unauthenticated: (_) {
                  Navigator.pushReplacementNamed(
                      context, LoginScreen.ROUTE_NAME);
                });
          }),
          BlocListener<NoteactorBloc, NoteactorState>(
              listener: (context, state) {
            state.maybeMap(
                orElse: () {},
                deleteError: (deleteErrorState) {
                  FlushbarHelper.createError(
                          duration: const Duration(seconds: 3),
                          message: deleteErrorState.noteFailure!.map(
                              unexpected: (_) => 'Un Expected Error Happened',
                              insufficientPermission: (_) =>
                                  'Insufficient Permissions',
                              unableToUpdate: (_) => 'Impossible Error'))
                      .show(context);
                });
          }),
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'My Notes',
              style: TextStyle(color: Colors.white),
            ),
            leading: IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
               
                AuthBloc.get(context).add(const AuthEvent.signedOut());
              },
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.indeterminate_check_box),
                onPressed: () {},
              ),
            ],
          ),
          body: NotesOverviewBody(),
          
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              //TODO NOTE FORM NAV
            },
          ),
        ),
      ),
    );
  }
}
