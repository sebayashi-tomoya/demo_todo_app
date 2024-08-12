import 'package:demo_todo_app/application/state/todos_notifier.dart';
import 'package:demo_todo_app/domain/features/todo_creator.dart';
import 'package:demo_todo_app/domain/types/todoItem.dart';

class UpdateTodoUsecase {
  UpdateTodoUsecase({
    required this.todosNotifier
  });
  
  final TodosNotifier todosNotifier;

  /// Todoの更新を行う
  Future<void> updateTodo(TodoItem newModel) async {

    // ドメインを呼んでTodoを作成
    final creator = TodoCreator(
      id: newModel.id,
      groupId: newModel.groupId,
      title: newModel.title,
      executionDate: newModel.executionDate,
      done: newModel.done,
      isDeleted: newModel.isDeleted
    );

    final todo = creator.createNewTodo();
    todosNotifier.updateState(todo, newModel.id);
  }
}