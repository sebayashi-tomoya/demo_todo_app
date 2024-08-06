import 'package:demo_todo_app/domain/types/todoItem.dart';
import 'package:intl/intl.dart';

class TodoUsecase {
  
  // /// 単一のTodo作成
  // static Todo createTodo(TodoItem model) {
  //   return Todo(
  //     todo: model.todo,
  //     executionDate: DateFormat('yyyy/MM/dd').format(model.executionDate),
  //     done: model.done
  //   );
  // }

  static String dateTimeToString(DateTime date) {
    return DateFormat('yyyy/MM/dd').format(date);
  }

  // /// Todoのリスト作成
  // static List<Todo> createTodoList(List<TodoItem> models) {
  //   return models.map((item) => TodoUsecase.createTodo(item)).toList();
  // }

  /// Todoのモデル作成
  static TodoItem toModel(String todo, DateTime executionDate, bool done) {
    return TodoItem(
      todo: todo,
      executionDate: executionDate,
      done: done
    );
  }
}