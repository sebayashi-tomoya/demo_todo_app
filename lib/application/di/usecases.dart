import 'package:demo_todo_app/application/state/todos_notifier.dart';
import 'package:demo_todo_app/application/usecases/add_todo_usecase.dart';
import 'package:demo_todo_app/application/usecases/update_todo_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Add Todo
final addTodoProvider = Provider<AddTodoUsecase>(
  (ref) {
    final todosNotifier = ref.read(todosNotifierProvider.notifier);
    return AddTodoUsecase(todosNotifier: todosNotifier);
  }
);

/// Update Todo
final updateTodoProvider = Provider<UpdateTodoUsecase>(
  (ref) {
    final todosNotifier = ref.read(todosNotifierProvider.notifier);
    return UpdateTodoUsecase(todosNotifier: todosNotifier);
  }
);
