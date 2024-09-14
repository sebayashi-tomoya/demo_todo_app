import 'package:demo_todo_app/application/state/tab_index_notifier.dart';
import 'package:demo_todo_app/application/state/todos_notifier.dart';
import 'package:demo_todo_app/domain/types/todoGroup.dart';
import 'package:demo_todo_app/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GroupTab extends ConsumerWidget {
  final TodoGroup currentGroup;
  final int groupIndex;

  const GroupTab({
    super.key,
    required this.currentGroup,
    required this.groupIndex
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 現在のタブインデックス
    final currentIndex = ref.watch(tabIndexNotifierProvider);
    // Todoのリスト
    final todos = ref.watch(todosNotifierProvider);
    // 円の枠色
    // 円のborderはTabBarのプロパティで設定できなかったので個別で設定
    final circleColor = currentIndex == groupIndex ? AppColors.selectedTab : AppColors.noSelectedTab; 

    int getCount(){
      // 削除済みのTodoは除外
      final notDeletedList = todos
        .where((e) => e.isDeleted == false)
        .toList();
      
      // 'すべて'の場合は全部
      if (currentGroup.id == "GAll"){
        return notDeletedList.length;
      }
      
      // それ以外はグループIDは一致するTodoのみ
      return notDeletedList
        .where((e) => e.groupId == currentGroup.id)
        .length;
    }

    return Tab(
      child: Row(
        children: [
          // グループ名
          Text(currentGroup.name),

          // padding
          const SizedBox(width: 3.0),

          // グループ内のTodo件数
          Container(
            height: 23.0,
            width: 23.0,
             decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 1.0,
                  color: circleColor
                ),
              ),
            child: Center(
              child: Text(getCount().toString()),
            ),
          ),
        ],
      ),
    );
  }
}