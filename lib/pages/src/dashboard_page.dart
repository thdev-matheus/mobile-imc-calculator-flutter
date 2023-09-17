import 'package:flutter/material.dart';
import 'package:imc_calculator/styles/global_styles.dart';
import 'package:imc_calculator/components/_components.dart';
import 'package:imc_calculator/models/_models.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  Map<dynamic, dynamic>? args;

  Imc mockImc = Imc(weight: 70.5, height: 1.69);

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    args = ModalRoute.of(context)!.settings.arguments as Map<dynamic, dynamic>;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 32),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Resultados para: ',
                  style: primaryTextStyle(
                    size: 30,
                    weight: FontWeight.bold,
                  ),
                ),
                Text(
                  args?['name'],
                  style: primaryTextStyle(
                    size: 30,
                    weight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            separator(height: 16),
            ImcCard(imc: mockImc)
          ],
        ),
      ),
    );
  }
}
