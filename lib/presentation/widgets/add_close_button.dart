import 'package:demo_todo_app/application/di/usecases.dart';
import 'package:demo_todo_app/application/state/date_notifier.dart';
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
    /// 実行日
    final selectedDate = ref.watch(dateNotifierProvider);
    /// ボタン内の文字
    final bottonText = isEmptyText(inputText) ? "閉じる" : "追加";
    // ボタン押下時のイベント
    void onPressed() {
      final usecase = ref.read(addTodoProvider);
      if (isEmptyText(inputText)){
        Navigator.pop(context);
      } else {
        usecase.addNewTodo(inputText, selectedDate);
        // // 入力欄を空に
        // final inputTexnotifier = ref.read(inputTextNotifierProvider.notifier);
        // inputTexnotifier.updateState("");
      }
    }
    
    return ElevatedButton(
      onPressed: () => onPressed(),
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.main,
      ),
      child: Text(
        bottonText,
        style: const TextStyle(color: AppColors.white),
      ),
    );
  }
}