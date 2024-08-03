import 'package:flutter/material.dart';

class TodoOthers extends StatelessWidget {
  const TodoOthers({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.menu),
        Text("その他")
      ] ,
    );
  }
}