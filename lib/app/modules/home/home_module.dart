import 'package:app_task/app/modules/home/presenter/pages/home_page.dart';
import 'package:app_task/app/modules/login/presenter/pages/login_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const HomePage()),
  ];
}
