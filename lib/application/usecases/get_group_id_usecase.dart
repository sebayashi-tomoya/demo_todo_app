import 'package:demo_todo_app/application/state/tab_index_notifier.dart';
import 'package:demo_todo_app/application/state/todo_groups_notifier.dart';

class GetGroupIdUsecase {
  GetGroupIdUsecase({
    required this.groupsNotifier,
    required this.tabIndexNotifier
  });
  
  final TodoGroupsNotifier groupsNotifier;
  final TabIndexNotifier tabIndexNotifier;

  /// 開いているタブのインデックスからgroupIdを取得
  String getId() {
    final currentIndex = tabIndexNotifier.getCurrentIndex();
    return groupsNotifier.getId(currentIndex);
  }
}