import 'package:demo_todo_app/application/state/tab_index_notifier.dart';
import 'package:demo_todo_app/application/state/todo_groups_notifier.dart';
import 'package:demo_todo_app/presentation/pages/main_page/todo_list.dart';
import 'package:demo_todo_app/presentation/pages/side_menu.dart';
import 'package:demo_todo_app/presentation/widgets/add_button.dart';
import 'package:demo_todo_app/presentation/widgets/colored_tab_bar.dart';
import 'package:demo_todo_app/presentation/widgets/delete_button.dart';
import 'package:demo_todo_app/presentation/widgets/group_tab.dart';
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
    // 現在のタブインデックスを管理するプロバイダー
    final tabIndex = ref.watch(tabIndexNotifierProvider);
    // グループ
    final groups = ref.watch(todoGroupsNotifierProvider);
 
    List<Widget> createTab(){
      var resultList = <Widget>[];
      for (final item in groups){
        resultList.add(GroupTab(currentGroup: item));
      }
      resultList.add(Tab(text: "+"));
      return resultList;
    }        

    return DefaultTabController(
      // groupの数+”＋”ボタンのため+1
      length: groups.length + 1,
      child: Scaffold(
          backgroundColor: AppColors.mainBackground,
        
          // 画面上部
          drawer: const SideMenu(),
      
          appBar: AppBar(
            backgroundColor: AppColors.main,
            actions: const [
              SerchButton(),
              SettingsButton(),
            ],
            bottom: ColoredTabBar(
              color: AppColors.white,
              tabBar: TabBar(
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                onTap: (index) {
                  final tabIndexNotifier = ref.read(tabIndexNotifierProvider.notifier);
                  tabIndexNotifier.updateState(index);
                },
                tabs: createTab()
              ),
            ),
          ),
        
          // 画面中部
          body: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // 編集、その他
                      const Padding(
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
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TodoList(tabIndex: tabIndex)
                      ),
                    ],
                  ),
                ),
              ),
            ]
          ),
          
          // 画面下部ボタン（スワイプ時も固定）
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: const Padding(
            // 左右にpadding
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // ゴミ箱ボタン
                DeleteButton(),
                // 追加ボタン
                AddButton(),
              ],
            ),
          ),
      ),
    );
  }
}