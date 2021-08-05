import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/Application/notes/notewatcher/notewatcher_bloc.dart';

class NotesOverviewBody extends StatelessWidget {
  const NotesOverviewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotewatcherBloc,NotewatcherState>(builder: (context,state){
      return state.map(
        initial:(state)=> Container(),
         loadInProgress:(state)=> Center(child: CircularProgressIndicator(),) , 
         loadSuccess:(state){
            return ListView.builder(
              itemCount: state.notes!.size,
              itemBuilder: (context,index){
              final note = state.notes![index];
              return  
            });
         } , 
          loadError:(state)=>  );
    },);
  }
}
