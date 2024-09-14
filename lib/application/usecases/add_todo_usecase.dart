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
    final id =  "I${const Uuid().v4()}";
    // グループのIDを取得するためにタブのインデックスを取得
    final currentTabIndex = tabIndexNotifier.getCurrentIndex();

    // ドメインを呼んで新しいTodoを作成
    final creator = TodoCreator(
      id: id,
      groupId: groupsNotifier.getId(currentTabIndex),
      title: title,
      executionDate: executionDate,
      done: false,
      isDeleted: false
    );

    final todo = creator.createNewTodo();
    todosNotifier.addState(todo);
  }
}