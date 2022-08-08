import 'package:app_task/app/modules/todo/presenter/pages/create_todo/create_todo_page.dart';
import 'package:app_task/app/modules/todo/presenter/pages/todo_list/todo_list_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TodoModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/list', child: (context, args) => const TodoListPage()),
    ChildRoute('/', child: (context, args) => const CreateTodoPage()),
  ];
}
