import 'package:bkk/profile_screen.dart';
import 'package:flutter/material.dart';
import 'SplashScreen.dart';
import 'login_screen.dart';
import 'register_screen.dart';
import 'job_screen.dart';
import 'inside_job_screen.dart';
import 'alumni_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Job Portal App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/job': (context) => const JobScreen(),
        '/insideJob': (context) => const InsideJobScreen(),
        '/alumni': (context) => const AlumniScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}
