import 'package:demo_todo_app/domain/types/todoItem.dart';
import 'package:demo_todo_app/presentation/pages/side_menu.dart';
import 'package:demo_todo_app/presentation/widgets/search_button.dart';
import 'package:demo_todo_app/presentation/widgets/settings_button.dart';
import 'package:demo_todo_app/presentation/widgets/todo.dart';
import 'package:demo_todo_app/presentation/widgets/todo_edit.dart';
import 'package:demo_todo_app/presentation/widgets/todo_group.dart';
import 'package:demo_todo_app/presentation/widgets/todo_others.dart';
import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

/// メイン画面
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    // テスト用Todoリスト
    final testTodoList = [
      TodoItem(todo: "旅行の計画を立てる", executionDate: DateTime.now(), done: false),
      TodoItem(todo: "英会話教室を検討", executionDate: DateTime.now(), done: false),
      TodoItem(todo: "友達とランチ", executionDate: DateTime.now(), done: false),
      TodoItem(todo: "ストレッチ", executionDate: DateTime.now(), done: false),
      TodoItem(todo: "読書", executionDate: DateTime.now(), done: false),
      TodoItem(todo: "服薬", executionDate: DateTime.now(), done: false),
      TodoItem(todo: "燃えるゴミの日", executionDate: DateTime.now(), done: false),
    ];

    final testTodoGroupList = [
      "やること",
      "お買い物",
      "プライベート",
      "家族",
      "学校",
      "使い方",
    ];

    Widget createTodo(TodoItem model) {
      return Todo(
        todo: model.todo,
        done: model.done
      );
    }

    final todoList = ListView.builder(
      itemCount: testTodoList.length,
      itemBuilder: (c, i) => createTodo(testTodoList[i]),
    );

    List<TodoGroup> createTodoGroupList() {
      final todoGroupList = <TodoGroup>[];

      for (var element in testTodoGroupList) {
        todoGroupList.add(
          TodoGroup(groupName: element)
        );
      }

      return todoGroupList;
    }

    return Scaffold(
      backgroundColor: AppColors.mainBackground,

      // 画面上部
      drawer: const SideMenu(),
      appBar:AppBar(
        actions: const [
          SerchButton(),
          SettingsButton(),
        ],
        backgroundColor: AppColors.main,
      ),

      // 画面中部
      body: Column(
        children: [
          // グループ欄（横スクロール）
          Container(
            color: Colors.white,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: createTodoGroupList(),
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TodoEdit(),
                SizedBox(width: 10),
                TodoOthers(),
              ],
            ),
          ),

          // Todo一覧
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20), // 角を丸くする
              ),
              height: 400, 
              child: todoList
            ),
          )
        ],
      ),
      
      // 画面下部ボタン（スワイプ時も固定）
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        // 左右にpadding
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // ゴミ箱ボタン
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: AppColors.main,
              child: const Icon(Icons.delete),
            ),
        
            // 追加ボタン
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: AppColors.main,
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}