import 'package:demo_todo_app/application/state/todo_groups_notifier.dart';
import 'package:demo_todo_app/domain/types/todoGroup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectGroupDropdown extends ConsumerWidget {
  const SelectGroupDropdown({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// グループのリスト
    final groups = ref.watch(todoGroupsNotifierProvider);
    /// 選択中のグループ名
    final selected = "すべて";

    return Center(
      child: DropdownButton<String>(
        hint: Text('Select an option'),
        value: selected,
        items: groups.map((TodoGroup item) {
          return DropdownMenuItem<String>(
            value: item.name,
            child: Text(item.name),
          );
        }).toList(),
        onChanged: (String? newValue) {
          // setState(() {
          //   selectedValue = newValue;
          // });
        }
      ),
    );
  }
}