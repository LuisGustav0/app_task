import 'package:app_task/app/core/config/themes/app_theme.dart';
import 'package:flutter/material.dart';

class TodoListWidget extends StatelessWidget {
  const TodoListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView(
          padding: EdgeInsets.only(
            left: 40,
          ),
          children: [
            ListTile(
              title: Text(
                'Ir ao supermercado',
                style: TextStyle(
                  fontSize: 18,
                  color: AppTheme.black,
                ),
              ),
              subtitle: Text('08/09/2023'),
            ),
            ListTile(
              title: Text(
                'Ir ao workshow',
                style: TextStyle(
                  fontSize: 18,
                  color: AppTheme.black,
                ),
              ),
              subtitle: Text('15/09/2023'),
            ),
          ],
        ),
      ),
    );
  }
}
