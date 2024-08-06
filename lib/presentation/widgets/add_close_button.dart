import 'package:demo_todo_app/application/state/input_text_notifier.dart';
import 'package:demo_todo_app/application/state/todos_notifier.dart';
import 'package:demo_todo_app/application/usecases/todo_usecase.dart';
import 'package:demo_todo_app/presentation/theme/app_colors.dart';
import 'package:demo_todo_app/presentation/widgets/input_todo_text.dart';
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
        // 入力内容をモデルに変更
        final model = TodoUsecase.toModel(inputText, DateTime.now(), false);
        // Todoリストに追加
        final todosNotifire = ref.read(todosNotifierProvider.notifier);
        todosNotifire.addState(model);
        // Text入力欄を空欄にする
        const InputTodoText();
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