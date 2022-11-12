import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:note_keeper_app/screens/homepage.dart';
import 'package:note_keeper_app/screens/splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        'homepage': (context) => HomePage(),
      },
    ),
  );
}
