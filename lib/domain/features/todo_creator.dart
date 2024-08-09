import 'package:demo_todo_app/domain/types/todoItem.dart';

class TodoCreator {
  TodoCreator({
    required this.id,
    required this.title,
    required this.executionDate,
    required this.done,
    required this.isDeleted,
  });

  String id;
  String title;
  DateTime? executionDate;
  bool done;
  bool isDeleted; 

  /// 新規Todoを作成する
  TodoItem createNewTodo() {
    return TodoItem(
      id: id,
      title: title,
      executionDate: executionDate,
      done: done,
      isDeleted: isDeleted,
      updated: DateTime.now()
    );
  }
}