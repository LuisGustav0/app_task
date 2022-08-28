import 'package:app_task/app/core/config/themes/app_theme.dart';
import 'package:app_task/app/core/presenter/components/button/button_component.dart';
import 'package:app_task/app/modules/home/presenter/widgets/user_card_widget/user_card_widget.dart';
import 'package:flutter/material.dart';

class CreateTodoPage extends StatelessWidget {
  const CreateTodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            UserCardWidget(),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Tarefa',
                        labelStyle: TextStyle(
                          color: AppTheme.primaryColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        '09/03/2021',
                        style: TextStyle(
                          color: AppTheme.primaryColor,
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    TextButton(
                      child: Text(
                        'Alterar Data',
                        style: TextStyle(
                          color: AppTheme.black,
                        ),
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 40,
                top: 20,
                bottom: 10,
              ),
              child: ButtonComponent(
                text: 'Salvar',
                width: double.infinity,
                onPressed: () {},
              ),
            ),
            TextButton(
              child: Text(
                'Cancelar',
                style: TextStyle(
                  color: AppTheme.black,
                ),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
