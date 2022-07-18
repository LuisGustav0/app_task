import 'package:app_task/app/core/config/ui/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: AppTheme.white,
          border: Border(
            top: BorderSide(
              width: 2,
              color: AppTheme.greyWithAlpha50,
            ),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 30),
            SignInButton(
              Buttons.Google,
              text: 'Continue com o Google',
              padding: const EdgeInsets.all(5),
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              onPressed: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Não tem conta?'),
                TextButton(
                  onPressed: () {},
                  child: const Text('Cadastre-se'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
