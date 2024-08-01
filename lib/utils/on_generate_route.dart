import 'package:flutter/material.dart';
import 'package:notesapp/views/notes_view.dart';
import 'package:notesapp/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case NotesView.routeName:
      return MaterialPageRoute(builder: (context) => const NotesView());
    default:
      return MaterialPageRoute(builder: (context) => const NotesView());
  }
}
