import 'package:flutter/material.dart';
import 'package:imc_calculator/components/_components.dart';
import 'package:imc_calculator/utils/_utils.dart';

class FormProfile extends StatefulWidget {
  const FormProfile({super.key});

  @override
  State<FormProfile> createState() => _FormProfileState();
}

class _FormProfileState extends State<FormProfile> {
  TextEditingController nameController = TextEditingController();
  String? nameError;

  bool validationFields(String text) {
    RegExp regex = RegExp(r'^[a-zA-ZÀ-ÖØ-öø-ÿ]+$');

    return regex.hasMatch(text);
  }

  void handleSubmit() {
    setState(() {
      nameError = null;
    });

    bool isValid = validationFields(nameController.text);
    String text = nameController.text.trim();

    if (text.isEmpty) {
      setState(() {
        nameError = 'campo obrigatório';
      });
    } else if (!isValid) {
      setState(() {
        nameError = 'digite um único nome válido';
      });
    } else {
      navigator(
        context: context,
        path: '/dashboard',
        args: {"name": nameController.text},
        remove: true,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextInput(
            error: nameError,
            controller: nameController,
            icon: Icons.person,
            placeholder: 'Digite o seu primeiro nome',
            label: 'Nome',
            isRequired: true,
            // helperText: 'Ex.: Matheus, Marcos, Lucas, João',
          ),
          separator(height: 16),
          SizedBox(
            width: double.infinity,
            height: 48,
            child: TXTButton(
              text: 'Continuar',
              textSize: 16,
              action: handleSubmit,
            ),
          )
        ],
      ),
    );
  }
}
