import 'package:flutter/material.dart';
import 'package:imc_calculator/blocks/_blocks.dart';
import 'package:imc_calculator/components/_components.dart';
import 'package:imc_calculator/styles/global_styles.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          children: [
            separator(height: 32),
            const Logo(),
            separator(height: 32),
            Center(
              child: Column(
                children: [
                  Text(
                    "Perfil",
                    style: primaryTextStyle(
                      size: 36,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Para começarmos, digite o seu nome:",
                    style: primaryTextStyle(
                      size: 16,
                    ),
                  )
                ],
              ),
            ),
            separator(height: 24),
            const FormProfile()
          ],
        ),
      ),
    );
  }
}