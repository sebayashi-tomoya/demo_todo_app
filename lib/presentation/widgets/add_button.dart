import 'package:demo_todo_app/presentation/pages/add_todo_bottom_sheet.dart';
import 'package:demo_todo_app/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.main,

      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context){
            return const AddTodoBottomSheet();
          },
        );
      },
      
      child: const Icon(
        Icons.add,
        color: AppColors.white,
      ),
    );
  }
}