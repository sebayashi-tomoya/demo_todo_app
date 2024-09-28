import 'package:demo_todo_app/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddCloseButton extends ConsumerWidget {
  /// 入力欄のテキスト
  final String inputText;
  /// OKボタン押下時のイベント
  final VoidCallback addEvent;

  const AddCloseButton({
    super.key,
    required this.inputText,
    required this.addEvent
  });

  bool isEmptyText(String inputText) {
    return inputText == "";
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// ボタン内の文字
    final bottonText = isEmptyText(inputText) ? "閉じる" : "追加";
    
    return ElevatedButton(
      onPressed: isEmptyText(inputText) 
        ? () => Navigator.pop(context)
        : () => addEvent(),
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