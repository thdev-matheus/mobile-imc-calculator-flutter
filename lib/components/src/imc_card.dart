import 'package:flutter/material.dart';
import 'package:imc_calculator/models/_models.dart';
import 'package:imc_calculator/styles/global_styles.dart';

class ImcCard extends StatelessWidget {
  const ImcCard({
    super.key,
    required this.imc,
  });

  final Imc imc;

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> imcData = imc.getData();

    return Card(
      elevation: 5,
      child: SizedBox(
        height: 100,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                        'Peso: ',
                        style: primaryTextStyle(
                          size: 18,
                          weight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${imcData['weight']}Kg',
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
                        'Altura: ',
                        style: primaryTextStyle(
                          size: 18,
                          weight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${imcData['height']}m',
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
                    imcData['imc'].toString(),
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
                    imcData['day'].toString(),
                    style: primaryTextStyle(
                      size: 14,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    imcData['hour'].toString(),
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
    );
  }
}
