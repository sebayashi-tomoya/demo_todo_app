import 'package:demo_todo_app/domain/types/todoGroup.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'selected_group_notifier.g.dart';

@riverpod
class SelectedGroupNotifier extends _$SelectedGroupNotifier {
  @override
  TodoGroup build() {
    // 最初のデータ
    return TodoGroup(id: "GAll", name: "すべて", isDeleted: false, updated: DateTime.now());
  }
}