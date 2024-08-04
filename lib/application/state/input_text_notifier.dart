import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'input_text_notifier.g.dart';

@riverpod
class InputTextNotifier extends _$InputTextNotifier {
  @override
  String build() {
    // データ破棄時は空欄に
    ref.onDispose((){deleteAll();});

    // 最初のデータ
    return "";
  }

  // データを変更する関数
  void updateState(String inputText) {
    // 変更後のデータ
    final newState = inputText;
    // データを上書き
    state = newState;
  }

  // 入力欄を空欄に
  void deleteAll(){
    state = "";
  }
}