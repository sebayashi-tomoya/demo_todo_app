import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tab_index_notifier.g.dart';

@riverpod
class TabIndexNotifier extends _$TabIndexNotifier{
  @override
  int build() {
    // 初期値は'すべて'
    return 0;
  }

  void updateState(int newState){
    state = newState;
  }

  int getCurrentIndex(){
    return state;
  }
}