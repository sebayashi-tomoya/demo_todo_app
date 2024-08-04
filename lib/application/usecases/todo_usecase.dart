import 'package:demo_todo_app/application/state/todos_notifier.dart';
import 'package:demo_todo_app/domain/types/todoItem.dart';
import 'package:demo_todo_app/presentation/widgets/todo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class TodoUsecase {
  
  /// 単一のTodo作成
  static Todo createTodo(TodoItem model) {
    return Todo(
      todo: model.todo,
      executionDate: DateFormat('yyyy/MM/dd').format(model.executionDate),
      done: model.done
    );
  }

  /// Todoのリスト作成
  static List<Todo> createTodoList(List<TodoItem> models) {
    return models.map((item) => TodoUsecase.createTodo(item)).toList();
  }

  static TodoItem toModel(String todo, DateTime executionDate, bool done) {
    return TodoItem(
      todo: todo,
      executionDate: executionDate,
      done: done
    );
  }
}