import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:yearbook_app/firebase_options.dart';
import 'package:yearbook_app/screens/auth/login_page.dart';
import 'package:yearbook_app/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'yearbook-app-efacb',
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}
