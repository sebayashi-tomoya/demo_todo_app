// ignore_for_file: file_names
import 'package:demo_todo_app/presentation/pages/main_page/main_page.dart';
import 'package:demo_todo_app/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';

class DemoTodoApp extends StatelessWidget {
  const DemoTodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Todo App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.main),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}



