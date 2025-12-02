import "package:flutter/material.dart";

class GoalsScreen extends StatelessWidget {
  const GoalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Metas Personales"),
      ),
      body: const Center(
        child: Text("Pantalla de Metas Personales"),
      ),
    );
  }
}
