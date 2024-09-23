import 'package:demo_todo_app/application/state/tab_index_notifier.dart';
import 'package:demo_todo_app/application/state/todo_groups_notifier.dart';

class GetGroupIdUsecase {
  // notifier
  final TodoGroupsNotifier groupsNotifier;
  final TabIndexNotifier tabIndexNotifier;

  GetGroupIdUsecase({
    required this.groupsNotifier,
    required this.tabIndexNotifier,
  });
  
  int getCurrentIndex() {
    return tabIndexNotifier.getCurrentIndex();
  }

  /// 開いているタブのインデックスからgroupIdを取得
  String getId() {
    return groupsNotifier.getId(getCurrentIndex());
  }
}