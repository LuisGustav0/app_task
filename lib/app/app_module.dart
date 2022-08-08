import 'package:app_task/app/modules/home/home_module.dart';
import 'package:app_task/app/modules/login/login_module.dart';
import 'package:app_task/app/modules/todo/todo_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ModuleRoute('/login', module: LoginModule()),
    ModuleRoute('/home', module: HomeModule()),
    ModuleRoute('/', module: TodoModule()),
  ];
}
