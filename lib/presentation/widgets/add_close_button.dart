import 'package:demo_todo_app/application/di/usecases.dart';
import 'package:demo_todo_app/application/state/input_text_notifier.dart';
import 'package:demo_todo_app/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddCloseButton extends ConsumerWidget {
  const AddCloseButton({super.key});

  bool isEmptyText(String inputText) {
    if (inputText == "") return true;
    return false;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// 入力欄のテキスト
    final inputText = ref.watch(inputTextNotifierProvider);

    return ElevatedButton(
      onPressed: isEmptyText(inputText) ? null:(){
        final usecase = ref.read(addTodoProvider);
        // TODO：日付を設定できるようにする
        usecase.addNewTodo(inputText, DateTime.now());
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.main,
      ),
      child: const Text(
        "追加",
        style: TextStyle(color: AppColors.white),
      ),
    );
  }
}