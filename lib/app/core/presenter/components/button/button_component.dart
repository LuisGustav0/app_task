import 'package:app_task/app/core/config/themes/app_theme.dart';
import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final String? image;
  final double? width;

  const ButtonComponent({
    Key? key,
    required this.text,
    required this.onPressed,
    this.image,
    this.width,
  }) : super(key: key);

  Widget buildImage() {
    if (image == null) {
      return const SizedBox(width: 10);
    }

    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Image.asset(
        image!,
        width: 32,
      ),
    );
  }

  Widget buildText() => Text(
        text,
        style: TextStyle(
          color: AppTheme.white,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      width: width ?? 250,
      child: TextButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildImage(),
            buildText(),
          ],
        ),
      ),
    );
  }
}
