import 'package:demo_todo_app/domain/types/todoItem.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'todos_notifier.g.dart';

@riverpod
class TodosNotifier extends _$TodosNotifier {
  @override
  List<TodoItem> build() {
    // 最初のデータ
    return [
      TodoItem(todo: "旅行の計画を立てる", executionDate: DateTime.now(), done: false),
      // TodoItem(todo: "英会話教室を検討", executionDate: DateTime.now(), done: false),
      // TodoItem(todo: "友達とランチ", executionDate: DateTime.now(), done: false),
      // TodoItem(todo: "ストレッチ", executionDate: DateTime.now(), done: false),
      // TodoItem(todo: "読書", executionDate: DateTime.now(), done: false),
      // TodoItem(todo: "服薬", executionDate: DateTime.now(), done: false),
      // TodoItem(todo: "燃えるゴミの日", executionDate: DateTime.now(), done: false),
      // TodoItem(todo: "旅行の計画を立てる", executionDate: DateTime.now(), done: false),
      // TodoItem(todo: "英会話教室を検討", executionDate: DateTime.now(), done: false),
      // TodoItem(todo: "友達とランチ", executionDate: DateTime.now(), done: false),
      // TodoItem(todo: "ストレッチ", executionDate: DateTime.now(), done: false),
      // TodoItem(todo: "読書", executionDate: DateTime.now(), done: false),
      // TodoItem(todo: "服薬", executionDate: DateTime.now(), done: false),
      // TodoItem(todo: "燃えるゴミの日", executionDate: DateTime.now(), done: false),
    ];
  }

  // データを変更する関数
  void updateState(TodoItem model) {
    // 変更前のデータ
    final oldState = state;
    // 変更後のデータ
    final newState = [...oldState, model];
    // データを上書き
    state = newState;
  }
}