import 'package:app_task/app/core/presenter/pages/splash_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CoreModule extends Module {
  @override
  List<Bind> get binds => [

  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const SplashPage()),
  ];
}
