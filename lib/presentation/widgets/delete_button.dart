import 'package:demo_todo_app/application/di/usecases.dart';
import 'package:demo_todo_app/application/state/todos_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../theme/app_colors.dart';

class DeleteButton extends ConsumerWidget {
  const DeleteButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todosNotifierProvider);

    const deleteIcon = Icon(
      Icons.delete,
      color: AppColors.main,
    );

    void onPressed() {
      final usecase = ref.read(updateTodoProvider);
      for (final item in todos){
        if (item.done == true){
          usecase.updateTodo(item.copyWith(isDeleted: true));
        }
      }
    }

    return FloatingActionButton(
      onPressed: () {onPressed();},
      backgroundColor: AppColors.white,
      child: deleteIcon,
    );
  }
}