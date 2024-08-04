import 'package:demo_todo_app/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';

/// Todoアイテム
class Todo extends StatelessWidget {
  final String todo;
  final String executionDate;
  final bool done;

  const Todo({
    super.key,
    required this.todo,
    required this.executionDate,
    required this.done,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.mainBackground),
      ),
      child: CheckboxListTile(
        onChanged: (value) => (){},
        value: done,
        title: Text(todo),
        subtitle: Text(
          executionDate,
          style: const TextStyle(color: AppColors.green),
          ),
        controlAffinity: ListTileControlAffinity.leading, // チェックボックスを左に配置
      ),
    );
  }
}