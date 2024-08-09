import 'package:demo_todo_app/application/di/usecases.dart';
import 'package:demo_todo_app/application/state/todos_notifier.dart';
import 'package:demo_todo_app/domain/features/datetime_formatter.dart';
import 'package:demo_todo_app/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Todoアイテム
class Todo extends ConsumerWidget {
  // Todo識別用のid
  final String id;

  const Todo({
    super.key,
    required this.id
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    DatetimeFormatter datetimeFormatter = DatetimeFormatter();
    final todos = ref.watch(todosNotifierProvider);
    final currentItem = todos.firstWhere((element) => element.id == id);

    // Containerのスタイル
    final boxdecoration =  BoxDecoration(
      border: Border.all(color: AppColors.mainBackground),
    );

    // チェックボックス変更時
    void onChangedCheck(bool? newValue) {
      if (newValue == null) return;

      final usecase = ref.read(updateTodoProvider);
      usecase.updateTodo(currentItem.copyWith(done: newValue));
    }

    // Todo単一のリストタイル
    final listTIle = CheckboxListTile(
      onChanged: (newValue) => onChangedCheck(newValue),
      value: currentItem.done,
      title: Text(currentItem.title),
      subtitle: Text(
        datetimeFormatter.forUI(currentItem.executionDate), 
        style: const TextStyle(color: AppColors.green),
      ),
      controlAffinity: ListTileControlAffinity.leading, // チェックボックスを左に配置
    );

    // Containerで成形
    return Container(
      decoration: boxdecoration,
      child: listTIle,
    );
  }
}