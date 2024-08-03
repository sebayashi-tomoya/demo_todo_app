import 'package:flutter/material.dart';

class TodoEdit extends StatelessWidget {
  const TodoEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.edit),
        Text("編集")
      ] ,
    );
  }
}