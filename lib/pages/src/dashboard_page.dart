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

  void deleteImc({required String id}) {
    showDialog(
      context: context,
      builder: (BuildContext bc) {
        return RemoveImcModal(
          actionRemove: () {
            person?.removeImc(id: id);
            setState(() {});
            Navigator.pop(context);
          },
        );
      },
    );
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
  void didChangeDependencies() {
    super.didChangeDependencies();

    Map<dynamic, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<dynamic, dynamic>;

    person = Person(name: args['name']);
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
            ...cardListBlock(
              person: person,
              deleteImc: deleteImc,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext bc) => Dialog(
              elevation: 5,
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
