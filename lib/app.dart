import 'package:flutter/material.dart';
import 'package:imc_calculator/routes.dart';

class ImcCalculatorApp extends StatelessWidget {
  const ImcCalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: routes,
        initialRoute: "/",
        title: "IMC Calculator",
      ),
    );
  }
}
