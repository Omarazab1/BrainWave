import 'package:flutter/material.dart';
import 'package:notesapp/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const routeName = 'splash';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff537d8d),
      body: SplashViewBody(),
    );
  }
}
