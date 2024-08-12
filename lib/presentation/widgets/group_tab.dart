import 'package:demo_todo_app/application/state/todos_notifier.dart';
import 'package:demo_todo_app/domain/types/todoGroup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GroupTab extends ConsumerWidget {
  final TodoGroup currentGroup;

  const GroupTab({
    super.key,
    required this.currentGroup
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todosNotifierProvider);  

    int getCount(){
      final notDeletedList = todos
        .where((e) => e.isDeleted == false)
        .toList();
      
      if (currentGroup.id == "GAll"){
        return notDeletedList.length;
      }
      
      return notDeletedList
        .where((e) => e.groupId == currentGroup.id)
        .length;
    }

    return Tab(
      child: Row(
        children: [
          Text(currentGroup.name),
          const SizedBox(width: 5.0),
          Container(
            height: 23.0,
            width: 23.0,
             decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 1.0,
                ),
              ),
            child: Center(
              child: Text(getCount().toString())
            ),
          ),
        ],
      ),
    );
  }
}