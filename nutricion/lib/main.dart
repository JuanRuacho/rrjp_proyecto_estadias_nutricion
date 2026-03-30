import 'package:flutter/material.dart';
import 'home.dart';
import 'loginScreen.dart';
import 'registerScreen.dart';
import 'dashboardScreen.dart';
import 'planScreen.dart';
import 'profileScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //se quito el banderin de debug
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      initialRoute: '/Login',
      home: const Home(title: 'Flutter Demo Home Page'),
      //se establecieron las rutas para cada pantalla
      routes: {
        '/home': (context) => const Home(title: 'Home'),
        '/Login': (context) => const LoginScreen(title: 'Login'),
        '/register': (context) => const RegisterScreen(title: 'Register'),
        '/dashboard': (context) => const DashboardScreen(title: 'Dashboard'),
        '/plan': (context) => const PlanScreen(title: 'Plan'),
        '/profile': (context) => const ProfileScreen(title: 'Profile'),
      },
    );
  }
}
