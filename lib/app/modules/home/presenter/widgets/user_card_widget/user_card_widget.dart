import 'package:app_task/app/core/config/themes/app_theme.dart';
import 'package:app_task/app/core/presenter/components/avatar/avatar_component.dart';
import 'package:flutter/material.dart';

class UserCardWidget extends StatelessWidget {
  const UserCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      padding: const EdgeInsets.only(
        top: 40,
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          alignment: Alignment.bottomCenter,
          image: ExactAssetImage(
            'assets/images/circle_orange.png',
          ),
        ),
      ),
      child: Column(
        children: [
          const AvatarComponent(
            width: 80,
            path: 'https://placehold.co/80',
          ),
          const SizedBox(height: 20),
          Text(
            'André Baltieri',
            style: TextStyle(
              color: AppTheme.white,
            ),
          ),
          TextButton(
            child: Text(
              'Sair',
              style: TextStyle(
                color: AppTheme.white,
              ),
            ),
            onPressed: () {},
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
