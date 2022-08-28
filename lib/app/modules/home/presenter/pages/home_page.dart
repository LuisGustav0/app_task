import 'package:app_task/app/core/config/themes/app_theme.dart';
import 'package:app_task/app/modules/home/presenter/widgets/navbar/navbar_widget.dart';
import 'package:app_task/app/modules/home/presenter/widgets/todo_list/todo_list_widget.dart';
import 'package:app_task/app/modules/home/presenter/widgets/user_card_widget/user_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget buildFloatingActionButton() {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      backgroundColor: AppTheme.primaryColor,
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Column(
        children: [
          UserCardWidget(),
          const NavBarWidget(),
          const TodoListWidget(),
        ],
      ),
      floatingActionButton: buildFloatingActionButton(),
    );
  }
}
