import 'package:app_task/app/core/presenter/components/button/button_component.dart';
import 'package:app_task/app/core/presenter/components/loading/loading_widget.dart';
import 'package:app_task/app/modules/login/presenter/controllers/login_controller.dart';
import 'package:app_task/app/modules/login/presenter/styles/login_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginController _controller;

  @override
  void initState() {
    _controller = Modular.get<LoginController>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('Login Page')),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30),
            child: LoadingWidget(
              isLoading: _controller.isLoading,
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
                      onPressed: _controller.login,
                    ),
                    LoginStyle.sizedBoxHeight40,
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
