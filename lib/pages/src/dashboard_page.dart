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
  Person? person;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    Map<dynamic, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<dynamic, dynamic>;

    person = Person(name: args['name']);
  }

  List<Widget> imcResults() {
    Map<String, dynamic>? data = person?.getData();

    List<dynamic> cards =
        data?['results'].map((imc) => ImcCard(imc: imc)).toList();
    if (cards.isEmpty) {
      return [
        Column(
          children: [
            separator(height: 15),
            Text(
              'Você não possui nenhum cálculo em seu histórico',
              textAlign: TextAlign.center,
              style: primaryTextStyle(
                size: 24,
                color: secondary,
                weight: FontWeight.bold,
              ),
            ),
            Text(
              'Adicione um novo cálculo',
              textAlign: TextAlign.center,
              style: primaryTextStyle(
                size: 24,
                color: primary,
              ),
            ),
          ],
        )
      ];
    } else {
      return cards as List<Widget>;
    }
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
                  person?.getData()['name'],
                  style: primaryTextStyle(
                    size: 30,
                    weight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            separator(height: 16),
            ...imcResults()
          ],
        ),
      ),
    );
  }
}
