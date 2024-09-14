import 'package:demo_todo_app/application/state/tab_index_notifier.dart';
import 'package:demo_todo_app/application/state/todo_groups_notifier.dart';
import 'package:demo_todo_app/domain/types/todoGroup.dart';
import 'package:demo_todo_app/presentation/pages/add_group_bottom_sheet.dart';
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
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../theme/app_colors.dart';

/// メイン画面
class MainPage extends HookConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 現在のタブインデックス
    final int currentIndex = ref.watch(tabIndexNotifierProvider);
    // グループ
    final List<TodoGroup> groups = ref.watch(todoGroupsNotifierProvider);
    // TabControllerの長さを状態として管理（groupの数 ＋ ’＋’ボタンのため length+1）
    final tabLength = useState(groups.length + 1);
    // タブのコントローラー
    TabController tabController = useTabController(initialLength: tabLength.value);
    
    /// ------------------------------------------------------
    /// groups追加・削除時にtabLength更新 → TabConttoller新規作成
    /// TabControllerとTabBarのlengthを合わせるため
    /// ------------------------------------------------------

    useEffect(() {
      tabLength.value = groups.length + 1;

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (tabController.length != tabLength.value) {
          // 最初のタブに移動
          tabController.animateTo(0);
        }
      });

      return null;
    }, [groups]);

    // TabControllerのlengthは再生成しないと変更できないため、tabLength変更時に再生成
    useEffect(() {
      tabController = TabController(
        length: tabLength.value,
        vsync: useSingleTickerProvider()
      );

      return tabController.dispose;
    }, [tabLength.value]);

    /// ------------------------------------------------------
    
    // タブ変更時のイベント
    useEffect(() {
      tabController.addListener(() {
        ref.read(tabIndexNotifierProvider.notifier).updateState(tabController.index);
      });

      return null;
    }, [tabController]);
 
    List<Widget> createTabs(){
      var resultList = <Widget>[];
      for (int i = 0; i < groups.length; i++){
        resultList.add(GroupTab(
          currentGroup: groups[i],
          groupIndex: i
        ));
      }
      resultList.add(
        ElevatedButton(
          onPressed: (){
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context){
                return const AddGroupBottomSheet();
              },
            );
          },
          child: const Text("+")
        )
      );
      return resultList;
    }        

    return Scaffold(
      backgroundColor: AppColors.mainBackground,
    
      // 画面上部
      drawer: const SideMenu(),
  
      appBar: AppBar(
        backgroundColor: AppColors.main,
        actions: const [
          SerchButton(),
          SettingsButton(),
        ],

        // グループ表示欄
        bottom: ColoredTabBar(
          color: AppColors.white,
          tabBar: TabBar(
            controller:  tabController,
            indicatorColor: AppColors.selectedTab,
            labelColor: AppColors.selectedTab,
            unselectedLabelColor: AppColors.noSelectedTab,
            tabAlignment: TabAlignment.start,
            isScrollable: true,
            tabs: createTabs()
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
                    child: TodoList(tabIndex: currentIndex)
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
        padding: EdgeInsets.symmetric(horizontal: 15),
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
    );
  }
}