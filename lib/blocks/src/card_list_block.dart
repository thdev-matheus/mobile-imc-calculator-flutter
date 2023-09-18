import 'package:flutter/material.dart';
import 'package:imc_calculator/models/_models.dart';
import 'package:imc_calculator/components/_components.dart';
import 'package:imc_calculator/styles/global_styles.dart';

List<dynamic> cardListBlock({
  required Person? person,
  required void Function({required String id}) deleteImc,
}) {
  Map<String, dynamic>? data = person?.getData();

  List<dynamic> cards = data?['results']
      .map((imc) => ImcCard(
            imc: imc,
            deleteImc: deleteImc,
          ))
      .toList();

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
