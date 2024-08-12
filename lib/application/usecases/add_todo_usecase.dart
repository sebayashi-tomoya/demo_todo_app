import 'package:demo_todo_app/application/state/tab_index_notifier.dart';
import 'package:demo_todo_app/application/state/todo_groups_notifier.dart';
import 'package:demo_todo_app/application/state/todos_notifier.dart';
import 'package:demo_todo_app/domain/features/todo_creator.dart';
import 'package:uuid/uuid.dart';

class AddTodoUsecase {
  AddTodoUsecase({
    required this.todosNotifier,
    required this.groupsNotifier,
    required this.tabIndexNotifier
  });
  
  final TodosNotifier todosNotifier;
  final TodoGroupsNotifier groupsNotifier;
  final TabIndexNotifier tabIndexNotifier;

  /// 新しいTodoをリストに追加する
  Future<void> addNewTodo(String title, DateTime executionDate) async {
    // ランダムでIDを生成
    final id =  "I${const Uuid().v4()}";
    // 開いているタブのグループIDを取得
    final currentTabIndex = tabIndexNotifier.getCurrentIndex();
    final cuurentGroupId = groupsNotifier.getId(currentTabIndex);

    // ドメインを呼んで新しいTodoを作成
    final creator = TodoCreator(
      id: id,
      groupId: cuurentGroupId,
      title: title,
      executionDate: executionDate,
      done: false,
      isDeleted: false
    );

    final todo = creator.createNewTodo();
    todosNotifier.addState(todo);
  }
}