// ignore_for_file: file_names
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    const header = DrawerHeader(
      child: Text("メニュー")
    );

    const clender = ListTile(
      leading: Icon(Icons.add),
      title: Text("カレンダー"),
    );

    const withDeadline = ListTile(
      title: Text("期限付き"),
    );

    const garbage = ListTile(
      title: Text("ゴミ箱"),
    );

    const todo = ListTile(
      title: Text("やること"),
    );

    const howToUse = ListTile(
      title: Text("使い方"),
    );

    final list = ListView(
      children: const [
        header,
        clender,
        withDeadline,
        garbage,
        todo,
        howToUse
      ],
    );

    return Drawer(
      child: list
    );
  }
}