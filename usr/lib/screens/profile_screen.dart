import "package:flutter/material.dart";

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil y Progreso"),
      ),
      body: const Center(
        child: Text("Pantalla de Perfil y Progreso Financiero"),
      ),
    );
  }
}
