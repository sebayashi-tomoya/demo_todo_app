import 'package:demo_todo_app/application/di/usecases.dart';
import 'package:demo_todo_app/application/state/date_notifier.dart';
import 'package:demo_todo_app/application/state/input_text_notifier.dart';
import 'package:demo_todo_app/presentation/pages/date_picker_bottom_sheet.dart';
import 'package:demo_todo_app/presentation/theme/app_colors.dart';
import 'package:demo_todo_app/presentation/theme/app_size.dart';
import 'package:demo_todo_app/presentation/widgets/add_close_button.dart';
import 'package:demo_todo_app/presentation/widgets/input_todo_text.dart';
import 'package:demo_todo_app/presentation/widgets/select_group_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddTodoBottomSheet extends ConsumerWidget {
  const AddTodoBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// 入力欄のテキスト
    final inputText = ref.watch(inputTextNotifierProvider);
    /// 実行日
    final selectedDate = ref.watch(dateNotifierProvider);

    return Container(
      height: AppSize.bottomSheetHeight,
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 10),
            // テキスト入力欄
            const InputTodoText(),
            const SizedBox(height: 10),
            // グループ選択
            const SelectGroupDropdown(),
            const SizedBox(height: 10),
            // 日付選択
            const DatePickerBottomSheet(),
            const SizedBox(height: 10),
            // '閉じるor追加'ボタン
            AddCloseButton(
              inputText: inputText,
              addEvent: (){
                final usecase = ref.read(addTodoProvider);
                usecase.addNewTodo(inputText, selectedDate);
                // 入力欄を空に
                final notifier = ref.read(inputTextNotifierProvider.notifier);
                notifier.updateState("");
              }
            ),
          ],
        )
      ),
    );
  }
}