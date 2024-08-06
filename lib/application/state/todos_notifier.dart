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

  /// Todoの追加
  void addState(TodoItem model) {
    final oldState = state;
    final newState = [...oldState, model];
    state = newState;
  }

  /// Todoの更新
  void updateState(List<TodoItem> models) {
    // stateに直接代入ではUIに変更されないため新規のインスタンスを作成
    var newState = List<TodoItem>.from(state);
    newState = models;
    state = newState;
  }
}