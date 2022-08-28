import 'package:app_task/app/core/config/themes/app_theme.dart';
import 'package:app_task/app/core/presenter/components/avatar/avatar_component.dart';
import 'package:app_task/app/core/user/user_auth.dart';
import 'package:app_task/app/modules/login/presenter/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class UserCardWidget extends StatelessWidget {
  UserCardWidget({super.key});

  final _controller = Modular.get<LoginController>();

  @override
  Widget build(BuildContext context) {
    final String picture =
        UserAuth.instance.picture ?? 'https://placehold.co/80';

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
          AvatarComponent(
            width: 80,
            path: picture,
          ),
          const SizedBox(height: 20),
          Text(
            UserAuth.instance.name,
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
            onPressed: () async {
              await _controller.logout();
            },
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
