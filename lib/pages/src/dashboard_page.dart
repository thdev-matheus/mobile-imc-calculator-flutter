import 'package:flutter/material.dart';
import 'package:imc_calculator/styles/global_styles.dart';
import 'package:imc_calculator/components/_components.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  Map<dynamic, dynamic>? args;

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
            Card(
              elevation: 5,
              child: SizedBox(
                height: 100,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Peso: ",
                                style: primaryTextStyle(
                                  size: 18,
                                  weight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "71.2Kg",
                                style: primaryTextStyle(
                                  size: 18,
                                  weight: FontWeight.bold,
                                  color: primary,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Altura: ",
                                style: primaryTextStyle(
                                  size: 18,
                                  weight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "1.69m",
                                style: primaryTextStyle(
                                  size: 18,
                                  weight: FontWeight.bold,
                                  color: primary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "IMC",
                            style: primaryTextStyle(
                              size: 18,
                              weight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "25.8",
                            style: primaryTextStyle(
                              size: 40,
                              weight: FontWeight.bold,
                              color: secondary,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "16/09/2023",
                            style: primaryTextStyle(
                              size: 14,
                              weight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "14h10",
                            style: primaryTextStyle(
                              size: 16,
                              weight: FontWeight.bold,
                              color: secondary,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
