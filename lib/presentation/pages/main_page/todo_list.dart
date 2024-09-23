import 'package:demo_todo_app/application/di/usecases.dart';
import 'package:demo_todo_app/application/state/todos_notifier.dart';
import 'package:demo_todo_app/presentation/theme/app_colors.dart';
import 'package:demo_todo_app/presentation/widgets/todo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoList extends ConsumerWidget {
  const TodoList({
    super.key,
    required this.tabIndex
  });

  final int tabIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todosNotifierProvider);

    final boxDecoration =  BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(20), // 角を丸くする
    );

    List<Todo> toWidget(){
      // 対象のグループID
      final groupIdProvider = ref.read(getGroupIdProvider);
      final groupId = groupIdProvider.getId();
      // 削除済みでない＆グループIDが一致するTodo
      var resultList = <Todo>[];
      for(final item in todos){
        if (item.isDeleted == true){
          continue;
        }
        else if (groupId == "GAll"){
          resultList.add(Todo(id: item.id));
        }
        else if (item.groupId == groupId){
          resultList.add(Todo(id: item.id)); 
        }
      }
      return resultList;
    }

    return Container(
      decoration: boxDecoration,
      child: Column(
        mainAxisSize: MainAxisSize.min, // 子ウィジェットの最小サイズに合わせる
        children: toWidget(),
      ),
    );
  }
}