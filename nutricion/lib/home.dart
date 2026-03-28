import 'package:flutter/material.dart';
import 'dashboardScreen.dart';
import 'planScreen.dart';
import 'profileScreen.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _paginas = <Widget>[
      DashboardScreen(title: 'Dashboard'),
      PlanScreen(title: 'Plan'),
      ProfileScreen(title: 'Profile'),
    ];

    return Scaffold(
      //usamos un  bottom navigation bar para navegar entre las pantallas
      body: _paginas[_currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTabIndex,
        onTap: (index) {
          setState(() {
            _currentTabIndex = index;
          });
        },
        items: const [
          //pantalla de dashboard
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          //pantalla de plan alimenticio
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Plan',
          ),
          //pantalla de perfil del usuario
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],

        selectedItemColor: Colors.grey,
      ),
    );
  }
}
