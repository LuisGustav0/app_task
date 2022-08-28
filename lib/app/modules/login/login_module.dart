import 'package:app_task/app/modules/home/home_module.dart';
import 'package:app_task/app/modules/login/presenter/controllers/login_controller.dart';
import 'package:app_task/app/modules/login/presenter/pages/login_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginModule extends Module {
  @override
  List<Bind> get binds => [
    Bind((i) => LoginController()),
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const LoginPage()),
    ModuleRoute('/home', module: HomeModule()),
  ];
}
