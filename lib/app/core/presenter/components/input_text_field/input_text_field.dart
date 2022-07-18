import 'package:app_task/app/core/config/ui/app_theme.dart';
import 'package:app_task/app/core/presenter/components/input_text_field/controller/input_text_field_controller.dart';
import 'package:app_task/app/core/presenter/enums/type_input_text_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class InputTextField extends StatefulWidget {
  final String label;
  final TypeInputText type;

  final Icon? iconRight;
  final VoidCallback? onIconRightPressed;

  const InputTextField({
    Key? key,
    required this.label,
    this.type = TypeInputText.TEXT,
    this.iconRight,
    this.onIconRightPressed,
  }) : super(key: key);

  @override
  State<InputTextField> createState() => _InputTextFieldState();
}

class _InputTextFieldState extends State<InputTextField> {
  final InputTextFieldController _controller = InputTextFieldController();

  @override
  void initState() {
    _controller.initialized(
      widget.type,
      iconRight: widget.iconRight,
      onIconRightPressed: widget.onIconRightPressed,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => TextFormField(
        decoration: InputDecoration(
          labelText: widget.label,
          labelStyle: TextStyle(
            fontSize: 15,
            color: AppTheme.black,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: AppTheme.red,
            ),
          ),
          isDense: true,
          suffixIcon: _controller.iconButtonRight,
        ),
        obscureText: _controller.obscureText,
      ),
    );
  }
}
