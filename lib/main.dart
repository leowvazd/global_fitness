import 'package:flutter/material.dart';
import 'package:global_fitness/screens/bmi_screen.dart';
import 'package:global_fitness/screens/intro_screen.dart';

void main() {
  runApp(const GlobalApp());
}

class GlobalApp extends StatelessWidget {
  const GlobalApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),

      routes: {
        '/': (context) => const IntroScreen(),
        '/bmi': (context) => const BmiScreen(),
      },
      initialRoute: '/',
      // home: const IntroScreen(),
    );
  }
}
