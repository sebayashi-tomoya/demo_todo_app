import 'package:demo_todo_app/application/state/input_text_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InputTodoText extends HookConsumerWidget {
  const InputTodoText({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textController = useTextEditingController();
    final inputText = ref.watch(inputTextNotifierProvider);

    // '追加'ボタン押下時にinputTextが空文字に設定されるため、
    // それに反応して入力欄を空文字に設定
    useEffect(() {
      if (inputText == ""){
        textController.clear();
      }
      return null;
    }, [inputText]);


    return SizedBox(
      width: 300,
      child: TextField(
        controller: textController,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
        ),
        onChanged: (value){
          final notifier = ref.read(inputTextNotifierProvider.notifier);
          notifier.updateState(value);
        },
      ),
    );
  }
}