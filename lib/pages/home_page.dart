import 'package:flutter/material.dart';
import "package:imc_calculator/components/_index.dart";
import 'package:imc_calculator/styles/global_styles.dart';
import 'package:imc_calculator/utils/navigator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Bem-vindo(a) ao",
                    style: primaryTextStyle(
                      size: 20,
                      weight: FontWeight.bold,
                      color: primary,
                    ),
                  ),
                  const Logo(),
                  Text(
                    "Sua calculadora de IMC",
                    style: primaryTextStyle(
                      size: 20,
                      weight: FontWeight.bold,
                      color: tertiary,
                    ),
                  ),
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
                navigator(context: context, path: "/dashboard");
              },
            ),
          ],
        ));
  }
}
