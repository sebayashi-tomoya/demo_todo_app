import 'package:demo_todo_app/application/state/todos_notifier.dart';
import 'package:demo_todo_app/domain/features/todo_creator.dart';
import 'package:uuid/uuid.dart';

class AddTodoUsecase {
  AddTodoUsecase({
    required this.todosNotifier
  });
  
  final TodosNotifier todosNotifier;

  /// 新しいTodoをリストに追加する
  Future<void> addNewTodo(String title, DateTime executionDate) async {
    // ドメインを呼んで新しいTodoを作成
    final creator = TodoCreator(
      id: const Uuid().v4(),
      title: title,
      executionDate: executionDate,
      done: false,
      isDeleted: false
    );

    final todo = creator.createNewTodo();
    todosNotifier.addState(todo);
  }
}