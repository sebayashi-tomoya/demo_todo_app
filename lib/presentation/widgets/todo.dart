import 'package:demo_todo_app/application/state/todos_notifier.dart';
import 'package:demo_todo_app/application/usecases/todo_usecase.dart';
import 'package:demo_todo_app/domain/types/todoItem.dart';
import 'package:demo_todo_app/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Todoアイテム
class Todo extends ConsumerWidget {
  final TodoItem model;
  final int index;

  const Todo({
    super.key,
    required this.model,
    required this.index
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todosNotifierProvider);

    // Containerのスタイル
    final boxdecoration =  BoxDecoration(
      border: Border.all(color: AppColors.mainBackground),
    );

    // チェックボックス変更時
    void onChangedCheck(bool? newValue) {
      if (newValue == null) return;

      final newModel = TodoUsecase.toModel(model.todo, model.executionDate, newValue);
      final newState = List<TodoItem>.from(todos);
      newState[index] = newModel;

      final todosNotifire = ref.read(todosNotifierProvider.notifier);
      todosNotifire.updateState(newState);
    }

    // Todo単一のウィジェット
    final listTIle = CheckboxListTile(
      onChanged: (newValue) => onChangedCheck(newValue),
      value: model.done,
      title: Text(model.todo),
      subtitle: Text(
        TodoUsecase.dateTimeToString(model.executionDate),
        style: const TextStyle(color: AppColors.green),
      ),
      controlAffinity: ListTileControlAffinity.leading, // チェックボックスを左に配置
    );

    return Container(
      decoration: boxdecoration,
      child: listTIle,
    );
  }
}