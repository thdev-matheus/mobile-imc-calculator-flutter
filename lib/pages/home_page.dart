import 'package:flutter/material.dart';
import "package:imc_calculator/components/_index.dart";

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
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            separator(width: 32),
            TXTButton(
              secondary: true,
              text: "Ir Para Calculadora",
              action: () {
                debugPrint("foi");
              },
            ),
          ],
        ));
  }
}
