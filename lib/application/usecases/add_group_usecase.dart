import 'package:demo_todo_app/application/state/todo_groups_notifier.dart';
import 'package:demo_todo_app/domain/features/group_creator.dart';
import 'package:uuid/uuid.dart';

class AddGroupUsecase {
  AddGroupUsecase({
    required this.groupsNotifier
  });
  
  final TodoGroupsNotifier groupsNotifier;

  /// 新しいTodoをリストに追加する
  Future<void> addNewTodo(String gruopName) async {
    // ランダムでIDを生成
    final id =  "G${const Uuid().v4()}";
    
    // ドメインを呼んで新しいグループを作成
    final creator = GroupCreator(
      id: id,
      name: gruopName,
      isDeleted: false
    );

    final addGroup = creator.createNewGroup();
    groupsNotifier.addState(addGroup);
  }
}