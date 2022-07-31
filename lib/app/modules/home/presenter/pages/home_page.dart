import 'package:app_task/app/modules/home/presenter/widgets/user_card_widget/user_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Column(
        children: [
          UserCardWidget(

          ),
        ],
      ),
    );
  }
}
