// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_text_field_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$InputTextFieldController on InputTextFieldBaseController, Store {
  late final _$obscureTextAtom =
      Atom(name: 'InputTextFieldBaseController.obscureText', context: context);

  @override
  bool get obscureText {
    _$obscureTextAtom.reportRead();
    return super.obscureText;
  }

  @override
  set obscureText(bool value) {
    _$obscureTextAtom.reportWrite(value, super.obscureText, () {
      super.obscureText = value;
    });
  }

  late final _$InputTextFieldBaseControllerActionController =
      ActionController(name: 'InputTextFieldBaseController', context: context);

  @override
  void onIconRightPressed() {
    final _$actionInfo = _$InputTextFieldBaseControllerActionController
        .startAction(name: 'InputTextFieldBaseController.onIconRightPressed');
    try {
      return super.onIconRightPressed();
    } finally {
      _$InputTextFieldBaseControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _configTypePassword() {
    final _$actionInfo = _$InputTextFieldBaseControllerActionController
        .startAction(name: 'InputTextFieldBaseController._configTypePassword');
    try {
      return super._configTypePassword();
    } finally {
      _$InputTextFieldBaseControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
obscureText: ${obscureText}
    ''';
  }
}
