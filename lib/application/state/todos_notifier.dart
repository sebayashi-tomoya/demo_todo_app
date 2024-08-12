import 'package:demo_todo_app/domain/types/todoItem.dart';
import 'package:demo_todo_app/mock_datas/todos_mock.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'todos_notifier.g.dart';

@riverpod
class TodosNotifier extends _$TodosNotifier {
  @override
  List<TodoItem> build() {
    // 最初のデータ
    return mockTodos;
  }

  /// Todoの追加
  void addState(TodoItem model) {
    final oldState = state;
    final newState = [...oldState, model];
    state = newState;
  }

  /// Todoの更新
  void updateState(TodoItem model, String id) {
    // stateに直接代入ではUIに変更されないため新規のインスタンスを作成
    final oldState = List<TodoItem>.from(state);
    // idが一致する項目を更新
    var newState = <TodoItem>[];
    for (final element in oldState){
      if (element.id == id){
        newState.add(model);
      } else {
        newState.add(element);
      }
    }

    state = newState;
  }
}