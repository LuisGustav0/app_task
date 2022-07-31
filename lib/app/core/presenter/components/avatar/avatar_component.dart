import 'package:app_task/app/core/config/themes/app_theme.dart';
import 'package:flutter/material.dart';

class AvatarComponent extends StatelessWidget {
  final String path;
  final double width;

  const AvatarComponent({
    super.key,
    required this.path,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: width,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width),
        image: DecorationImage(
          image: NetworkImage(path),
        ),
        color: AppTheme.blackWithOpacity0_2,
        border: Border.all(
          width: 5,
          color: AppTheme.whiteWithOpacity0_5,
        ),
      ),
    );
  }
}
