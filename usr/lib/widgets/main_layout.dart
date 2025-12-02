import "package:flutter/material.dart";
import "../screens/home_screen.dart";
import "../screens/challenges_screen.dart";
import "../screens/goals_screen.dart";
import "../screens/community_screen.dart";
import "../screens/profile_screen.dart";

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ChallengesScreen(),
    GoalsScreen(),
    CommunityScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag),
            label: "Retos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Metas",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: "Comunidad",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Perfil",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        showUnselectedLabels: true,
      ),
    );
  }
}
