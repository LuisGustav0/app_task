import 'package:app_task/app/core/config/ui/app_icons.dart';
import 'package:app_task/app/core/presenter/enums/type_input_text_enum.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'input_text_field_controller.g.dart';

class InputTextFieldController = InputTextFieldBaseController
    with _$InputTextFieldController;

abstract class InputTextFieldBaseController with Store {
  late TypeInputText _type;

  @observable
  bool obscureText = false;

  // Icon button right
  IconButton? iconButtonRight;
  Icon? _iconRight;
  VoidCallback? _onIconRightPressed;
  // Fim Icon button right

  void initialized(
    TypeInputText type, {
    Icon? iconRight,
    VoidCallback? onIconRightPressed,
  }) {
    _type = type;
    _iconRight = iconRight;
    _onIconRightPressed = onIconRightPressed;

    _configType();
  }

  Icon get iconRightDefault => obscureText
      ? const Icon(AppIcons.eye, size: 15)
      : const Icon(AppIcons.eye_slash, size: 15);

  IconButton getIconButtonRight() => IconButton(
        onPressed: _onIconRightPressed ?? onIconRightPressed,
        icon: _iconRight ?? iconRightDefault,
      );

  @action
  void onIconRightPressed() {
    obscureText = !obscureText;
    iconButtonRight = getIconButtonRight();
  }

  @action
  void _configTypePassword() {
    obscureText = true;
    iconButtonRight = getIconButtonRight();
  }

  void _configTypeText() {}

  void _configType() {
    switch (_type) {
      case TypeInputText.PASSWORD:
        _configTypePassword();
        break;
      default:
        _configTypeText();
    }
  }
}
