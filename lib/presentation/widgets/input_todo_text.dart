import 'package:demo_todo_app/application/state/input_text_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InputTodoText extends ConsumerWidget {
  const InputTodoText({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final text = ref.watch(inputTextNotifierProvider);

    return TextField(
      onChanged: (value){
        final notifier = ref.read(inputTextNotifierProvider.notifier);
        notifier.updateState(value);
      },
    );
  }
}