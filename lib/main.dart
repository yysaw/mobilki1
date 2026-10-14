import 'package:flutter/material.dart';
import 'screens/organizer_screen.dart';

void main() {
  runApp(const MedinowApp());
}

class MedinowApp extends StatelessWidget {
  const MedinowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medinow',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Roboto',
      ),
      home: const OrganizerScreen(),
    );
  }
}