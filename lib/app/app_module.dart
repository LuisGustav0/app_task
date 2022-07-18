import 'package:app_task/app/modules/login/login_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    // ChildRoute('/', child: (context, args) => const SplashPage()),
    // ModuleRoute('/home', module: HomeModule()),
    ModuleRoute('/', module: LoginModule()),
  ];
}
