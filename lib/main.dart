import 'screens/about_me.dart';
import 'screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomScreen(), // Set an initial home widget

      // Alternatively, you could use routes:
      routes: {
        '/home': (context) => const HomScreen(),
        '/about': (context) => const About_Me(),
      },
      initialRoute: '/home', // Specify the initial route
    );
  }
}