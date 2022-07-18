import 'package:app_task/app/core/presenter/components/input_text_field/input_text_field.dart';
import 'package:app_task/app/core/presenter/enums/type_input_text_enum.dart';
import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 20,
      ),
      child: Form(
        child: Column(
          children: [
            const InputTextField(
              label: 'E-Mail',
            ),
            const SizedBox(height: 20),
            const InputTextField(
              label: 'Senha',
              type: TypeInputText.PASSWORD,
            ),
            const SizedBox(height: 20),
            const InputTextField(
              label: 'Confirmar senha',
              type: TypeInputText.PASSWORD,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Salvar'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
