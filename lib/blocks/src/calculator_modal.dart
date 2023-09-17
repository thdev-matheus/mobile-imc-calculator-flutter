import 'package:flutter/material.dart';
import 'package:imc_calculator/styles/global_styles.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:imc_calculator/components/_components.dart';

class CalculatorModal extends StatefulWidget {
  const CalculatorModal({
    super.key,
    required this.calculate,
  });

  final void Function() calculate;

  @override
  State<CalculatorModal> createState() => _CalculatorModalState();
}

class _CalculatorModalState extends State<CalculatorModal> {
  final MaskTextInputFormatter heightMask = MaskTextInputFormatter(
    mask: '#.##',
    filter: {'#': RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  final MaskTextInputFormatter weightMask = MaskTextInputFormatter(
    mask: '###.#',
    filter: {'#': RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Column(
            children: [
              Text(
                'Calcular',
                style: primaryTextStyle(
                  size: 35,
                  weight: FontWeight.bold,
                  color: primary,
                ),
              ),
              separator(height: 16),
              Row(
                children: [
                  const Expanded(
                    child: TextInput(
                      label: 'Peso',
                      placeholder: 'Peso',
                      keyType: TextInputType.number,
                      helperText: 'Ex.: 85.9',
                    ),
                  ),
                  separator(width: 8),
                  const Expanded(
                    child: TextInput(
                      label: 'Altura',
                      placeholder: 'Altura',
                      keyType: TextInputType.number,
                      helperText: 'Ex.: 1.69',
                    ),
                  ),
                ],
              ),
              separator(height: 15),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: TXTButton(
                  text: 'Calcular',
                  action: () {},
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
