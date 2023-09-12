import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Column(
          children: [
            Text("Bem-vindo(a) ao"),
            Text("IMC"),
            Text("Calculator"),
            Text("Sua calculadora de IMC"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: TextButton(
          onPressed: () {},
          child: const Text("Calcular"),
        ),
      ),
    );
  }
}
