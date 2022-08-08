import 'package:app_task/app/core/config/themes/app_theme.dart';
import 'package:flutter/material.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
            child: Text(
              'Hoje',
              style: TextStyle(
                color: AppTheme.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {},
          ),
          TextButton(
            child: Text(
              'Amanhã',
              style: TextStyle(
                color: AppTheme.black,
                fontSize: 20,
                fontWeight: FontWeight.w100,
              ),
            ),
            onPressed: () {},
          ),
          TextButton(
            child: Text(
              'Todas',
              style: TextStyle(
                color: AppTheme.black,
                fontSize: 20,
                fontWeight: FontWeight.w100,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
