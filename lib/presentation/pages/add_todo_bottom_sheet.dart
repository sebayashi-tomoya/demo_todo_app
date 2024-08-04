import 'package:demo_todo_app/presentation/theme/app_colors.dart';
import 'package:demo_todo_app/presentation/theme/app_size.dart';
import 'package:demo_todo_app/presentation/widgets/add_close_button.dart';
import 'package:demo_todo_app/presentation/widgets/input_todo_text.dart';
import 'package:flutter/material.dart';

class AddTodoBottomSheet extends StatelessWidget {
  const AddTodoBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.bottomSheetHeight,
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: const Center(
        child: Column(
          children: [
            InputTodoText(),
            AddCloseButton(),
          ],
        )
      ),
    );
  }
}