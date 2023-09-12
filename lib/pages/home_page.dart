import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Bem-vindo(a) ao"),
                Text("IMC"),
                Text("Calculator"),
                Text("Sua calculadora de IMC"),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: TextButton(
        onPressed: () {},
        child: const Text("Calcular"),
      ),
    );
  }
}
