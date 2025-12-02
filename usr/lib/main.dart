import "package:flutter/material.dart";
import "screens/login_screen.dart";
import "screens/home_screen.dart";
import "screens/challenges_screen.dart";
import "screens/goals_screen.dart";
import "screens/community_screen.dart";
import "screens/profile_screen.dart";
import "widgets/main_layout.dart";

void main() {
  runApp(const Finanzas360App());
}

class Finanzas360App extends StatelessWidget {
  const Finanzas360App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Finanzas360",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          primary: Colors.green,
          secondary: Colors.blue,
        ),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        useMaterial3: true,
      ),
      initialRoute: "/login",
      routes: {
        "/login": (context) => const LoginScreen(),
        "/": (context) => const MainLayout(),
        "/home": (context) => const HomeScreen(),
        "/challenges": (context) => const ChallengesScreen(),
        "/goals": (context) => const GoalsScreen(),
        "/community": (context) => const CommunityScreen(),
        "/profile": (context) => const ProfileScreen(),
      },
    );
  }
}
