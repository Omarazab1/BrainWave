
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/utils/constants.dart';
import 'package:notesapp/utils/simple_bloc_observer.dart';

import 'package:notesapp/views/splash_view.dart';

import 'cubits/notes_cubit/notes_cubit.dart';
void main() async{
  await Hive.initFlutter();
  Hive.isAdapterRegistered(0);
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  Bloc.observer = SimpleBlocObserver();
  runApp(const NotesApp());
}
class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Notes App',
        theme: ThemeData(
          fontFamily: 'Poppins',
          brightness: Brightness.dark,
        ),
        home:const SplashView(),
        initialRoute: SplashView.routeName,
      ),
    );
  }
}
