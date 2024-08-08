import 'package:demo_todo_app/application/state/date_notifier.dart';
import 'package:demo_todo_app/domain/features/datetime_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DatePickerBottomSheet extends ConsumerWidget {
  const DatePickerBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// Datetime→String変換用クラス
    final datetimefomatter = DatetimeFormatter();
    /// 選択された日付
    final selectedDate = ref.watch(dateNotifierProvider);
    // 日付設定欄の初期設定
    final controller = TextEditingController();
    controller.text = datetimefomatter.forUI(selectedDate);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 300,
            child: TextField(
              controller: controller,
              readOnly: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              final DateTime? picked = await showDatePicker(
                context: context,
                initialDate: selectedDate,
                firstDate: DateTime(2000),
                lastDate: DateTime(2101),
              );
              if (picked != null && picked != selectedDate) {
                ref.read(dateNotifierProvider.notifier).setDate(picked);
              }
            },
            child: const Text('Select Date'),
          ),
        ],
      ),
    );
  }
}