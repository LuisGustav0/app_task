import 'package:app_task/app/core/presenter/components/button/button_component.dart';
import 'package:app_task/app/modules/login/presenter/styles/login_style.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Card(
            child: Column(
              children: [
                LoginStyle.sizedBoxWidthInfinity,
                Image.asset(
                  'assets/images/circle_orange.png',
                  width: 250,
                ),
                Text(
                  'Olá usuário',
                  style: LoginStyle.fontSize20,
                ),
                LoginStyle.sizedBoxHeight20,
                ButtonComponent(
                  text: 'Login com o Google',
                  image: 'assets/images/google.png',
                  onPressed: () {},
                ),
                LoginStyle.sizedBoxHeight40,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
