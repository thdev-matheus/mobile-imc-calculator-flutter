import 'package:flutter/material.dart';
import 'package:imc_calculator/pages/index.dart';

Map<String, Widget Function(BuildContext)> routes = {
  "/": (context) => const HomePage(),
};
