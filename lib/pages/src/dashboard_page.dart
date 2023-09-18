import 'package:flutter/material.dart';
import 'package:imc_calculator/styles/global_styles.dart';
import 'package:imc_calculator/components/_components.dart';
import 'package:imc_calculator/models/_models.dart';
import 'package:imc_calculator/blocks/_blocks.dart';

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

  List<dynamic> imcResults() {
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
      return cards;
    }
  }

  void calculate({
    required double weight,
    required double height,
  }) {
    Imc newImc = Imc(weight: weight, height: height);
    person?.addImc(imc: newImc);
    setState(() {});
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 32),
          children: [
            Text(
              'Resultados para: ${person?.getData()['name']}',
              textAlign: TextAlign.center,
              style: primaryTextStyle(
                size: 30,
                weight: FontWeight.bold,
              ),
            ),
            separator(height: 16),
            ...imcResults()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext bc) => Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: CalculatorModalBlock(
                calculate: calculate,
              ),
            ),
          );
        },
        backgroundColor: primary,
        child: const Icon(
          Icons.calculate,
        ),
      ),
    );
  }
}
