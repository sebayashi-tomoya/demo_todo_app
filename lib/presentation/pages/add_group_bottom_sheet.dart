import 'package:demo_todo_app/application/di/usecases.dart';
import 'package:demo_todo_app/presentation/theme/app_colors.dart';
import 'package:demo_todo_app/presentation/theme/app_size.dart';
import 'package:demo_todo_app/presentation/widgets/add_close_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddGroupBottomSheet extends HookConsumerWidget {
  const AddGroupBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// テキスト入力欄のコントローラー
    final textController = useTextEditingController();
    /// テキスト入力欄
    final inputText = useState("");

    // 入力欄を空にした後、ボタン内の文字を'閉じる'に変更するためにinputTextを更新
    // AddCloseButtonを再ビルドする
    useEffect(() {
      textController.addListener(() {
      inputText.value = textController.text;
      });
      return null;
    }, [textController]);

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
            SizedBox(
              width: 300,
              child:TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                controller: textController,
              ),
            ),
            const SizedBox(height: 10),

            // '閉じるor追加'ボタン
            AddCloseButton(
              inputText: inputText.value,
              addEvent: () {
                final usecase = ref.read(addGroupProvider);
                usecase.addNewGroup(textController.text);
                // 入力欄を空に
                textController.clear();
              },
            ),
          ],
        )
      ),
    );
  }
}