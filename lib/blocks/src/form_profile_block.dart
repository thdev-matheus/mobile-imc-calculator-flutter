import 'package:flutter/material.dart';
import 'package:imc_calculator/components/_components.dart';

class FormProfile extends StatefulWidget {
  const FormProfile({super.key});

  @override
  State<FormProfile> createState() => _FormProfileState();
}

class _FormProfileState extends State<FormProfile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Input(
          icon: Icons.person,
          placeholder: 'Digite o seu primeiro nome',
          label: 'Nome',
          helperText: 'Ex.: Matheus, Marcos, Lucas, João',
        ),
        separator(height: 16),
        SizedBox(
          width: double.infinity,
          height: 48,
          child: TXTButton(
            text: 'Continuar',
            textSize: 16,
            action: () {},
          ),
        )
      ],
    );
  }
}
