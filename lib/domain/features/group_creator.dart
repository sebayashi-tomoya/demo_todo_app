import 'package:demo_todo_app/domain/types/todoGroup.dart';

class GroupCreator {
  GroupCreator({
    required this.id,
    required this.name,
    required this.isDeleted,
  });

  String id;
  String name;
  bool isDeleted; 

  /// 新規グループを作成する
  TodoGroup createNewGroup() {
    return TodoGroup(
      id: id,
      name: name,
      isDeleted: isDeleted,
      updated: DateTime.now()
    );
  }
}