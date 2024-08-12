import 'package:demo_todo_app/domain/types/todoGroup.dart';
import 'package:demo_todo_app/mock_datas/groups_mock.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'todo_groups_notifier.g.dart';

@riverpod
class TodoGroupsNotifier extends _$TodoGroupsNotifier {
  @override
  List<TodoGroup> build() {
    // 最初のデータ
    return mockGroups;
  }

  /// グループの追加
  void addState(TodoGroup model) {
    final oldState = state;
    final newState = [...oldState, model];
    state = newState;
  }

  // /// Todoの更新
  // void updateState(TodoGroup model, String id) {
  //   // stateに直接代入ではUIに変更されないため新規のインスタンスを作成
  //   final oldState = List<TodoGroup>.from(state);
  //   // idが一致する項目を更新
  //   var newState = <TodoGroup>[];
  //   for (final element in oldState){
  //     if (element.id == id){
  //       newState.add(model);
  //     } else {
  //       newState.add(element);
  //     }
  //   }

  //   state = newState;
  // }

  String getId(int tabIndex){
    // 範囲外の場合は空文字列を返す
    if (tabIndex < 0 || tabIndex >= state.length) {
      return ""; 
    }

    // tabIndexに一致する場合にidを返す
    for (int i = 0; i < state.length; i++) {
      if (i == tabIndex) {
        return state[i].id; 
      }
    }

    // 一致するものがない場合は空文字列を返す
    return ""; 
  }
}