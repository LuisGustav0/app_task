import 'package:app_task/app/modules/login/presenter/widgets/footer/footer_widget.dart';
import 'package:app_task/app/modules/login/presenter/widgets/form/form_widget.dart';
import 'package:app_task/app/modules/todo-list/presenter/widgets/header_todo_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
                minWidth: constraints.maxWidth,
              ),
              child: IntrinsicHeight(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    SizedBox(height: 10),
                    HeaderTodoListWidget(),
                    FormWidget(),
                    SizedBox(height: 20),
                    FooterWidget(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
