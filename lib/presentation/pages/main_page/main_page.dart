import 'package:demo_todo_app/application/usecases/todo_group_usecase.dart';
import 'package:demo_todo_app/presentation/pages/add_todo_bottom_sheet.dart';
import 'package:demo_todo_app/presentation/pages/main_page/todo_list.dart';
import 'package:demo_todo_app/presentation/pages/side_menu.dart';
import 'package:demo_todo_app/presentation/theme/app_size.dart';
import 'package:demo_todo_app/presentation/widgets/delete_button.dart';
import 'package:demo_todo_app/presentation/widgets/search_button.dart';
import 'package:demo_todo_app/presentation/widgets/settings_button.dart';
import 'package:demo_todo_app/presentation/widgets/todo_edit.dart';
import 'package:demo_todo_app/presentation/widgets/todo_others.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../theme/app_colors.dart';

/// メイン画面
class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
 
    final testTodoGroupList = [
      "やること",
      "お買い物",
      "プライベート",
      "家族",
      "学校",
      "使い方",
    ];

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
            height: AppSize.todoGroupHeight,
            color: Colors.white,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: TodoGroupUsecase.createTodoGroupList(testTodoGroupList),
              ),
            ),
          ),

          // スクロール部分
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // 編集、その他
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TodoEdit(),
                        SizedBox(width: 15),
                        TodoOthers(),
                      ],
                    ),
                  ),
              
                  // Todo一覧
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TodoList(),
                  ),
                ],
              ),
            ),
          ),
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
            const DeleteButton(),
        
            // 追加ボタン
            FloatingActionButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context){
                    return const AddTodoBottomSheet();
                  },
                );
              },
              backgroundColor: AppColors.main,
              child: const Icon(
                Icons.add,
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}