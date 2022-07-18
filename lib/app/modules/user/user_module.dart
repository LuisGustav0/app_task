import 'package:app_task/app/modules/user/presenter/pages/register/register_user_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class UserModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/register',
            child: (context, args) => const RegisterUserPage()),
      ];
}
