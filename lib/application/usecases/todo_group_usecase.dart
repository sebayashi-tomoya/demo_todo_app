import 'package:demo_todo_app/presentation/widgets/todo_group.dart';

class TodoGroupUsecase {

  /// 単一のTodoGroupリストの作成
  static List<TodoGroup> createTodoGroupList(List<String> groupNames) {
      final todoGroupList = <TodoGroup>[];

      for (var element in groupNames) {
        todoGroupList.add(
          TodoGroup(groupName: element)
        );
      }

      return todoGroupList;
    }
}