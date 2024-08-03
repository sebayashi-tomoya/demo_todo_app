import 'package:flutter/material.dart';

class TodoGroup extends StatelessWidget {
  final String groupName;

  const TodoGroup({
    super.key,
    required this.groupName});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => {},
      style: TextButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white, 
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero, // 四角形にするための設定
        ),
      ),
      child: Text(groupName)
    );
  }
}