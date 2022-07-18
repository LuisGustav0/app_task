import 'package:app_task/app/core/config/ui/app_theme_extension.dart';
import 'package:flutter/material.dart';

class HeaderTodoListWidget extends StatelessWidget {
  const HeaderTodoListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/logo.png',
          height: 200,
        ),
        Text(
          'Todo list',
          style: context.textTheme.headline6,
        ),
      ],
    );
  }
}
