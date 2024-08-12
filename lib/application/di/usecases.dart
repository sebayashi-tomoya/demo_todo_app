import 'package:demo_todo_app/application/state/tab_index_notifier.dart';
import 'package:demo_todo_app/application/state/todo_groups_notifier.dart';
import 'package:demo_todo_app/application/state/todos_notifier.dart';
import 'package:demo_todo_app/application/usecases/add_group_usecase.dart';
import 'package:demo_todo_app/application/usecases/add_todo_usecase.dart';
import 'package:demo_todo_app/application/usecases/get_group_id_usecase.dart';
import 'package:demo_todo_app/application/usecases/update_todo_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Add Todo
final addTodoProvider = Provider<AddTodoUsecase>(
  (ref) {
    final todosNotifier = ref.read(todosNotifierProvider.notifier);
    final groupsNotifier = ref.read(todoGroupsNotifierProvider.notifier);
    final tabIndexNotifier = ref.read(tabIndexNotifierProvider.notifier);
    return AddTodoUsecase(
      todosNotifier: todosNotifier,
      groupsNotifier: groupsNotifier,
      tabIndexNotifier: tabIndexNotifier
    );
  }
);

/// Update Todo
final updateTodoProvider = Provider<UpdateTodoUsecase>(
  (ref) {
    final todosNotifier = ref.read(todosNotifierProvider.notifier);
    return UpdateTodoUsecase(todosNotifier: todosNotifier);
  }
);

/// Add Group
final addGroupProvider = Provider<AddGroupUsecase>(
  (ref) {
    final groupsNotifier = ref.read(todoGroupsNotifierProvider.notifier);
    return AddGroupUsecase(groupsNotifier: groupsNotifier);
  }
);

/// Get group id
final getGroupIdProvider = Provider<GetGroupIdUsecase>(
  (ref) {
    final groupsNotifier = ref.read(todoGroupsNotifierProvider.notifier);
    final tabIndexNotifier = ref.read(tabIndexNotifierProvider.notifier);
    return GetGroupIdUsecase(
      groupsNotifier: groupsNotifier,
      tabIndexNotifier: tabIndexNotifier,
    );
  }
);