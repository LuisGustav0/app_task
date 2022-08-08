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
          ],
        ),
      ),
    );
  }
}
