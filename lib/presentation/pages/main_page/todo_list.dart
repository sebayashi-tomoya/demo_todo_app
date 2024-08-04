import 'package:demo_todo_app/application/state/todos_notifier.dart';
import 'package:demo_todo_app/application/usecases/todo_usecase.dart';
import 'package:demo_todo_app/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoList extends ConsumerWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todosNotifierProvider);
    
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20), // 角を丸くする
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min, // 子ウィジェットの最小サイズに合わせる
        children: TodoUsecase.createTodoList(todos)
      )
    );
  }
}