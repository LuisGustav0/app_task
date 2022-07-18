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
            InputTextField(
              label: 'E-Mail',
            ),
            const SizedBox(height: 20),
            InputTextField(
              label: 'Senha',
              type: TypeInputText.PASSWORD,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text('Esqueceu sua senha?'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Login'),
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
