import 'package:freezed_annotation/freezed_annotation.dart';

part 'todoItem.freezed.dart';

@freezed
class TodoItem with _$TodoItem {
  const factory TodoItem({
    // やること
    required String todo,
    // 日付
    required DateTime executionDate,
    // 実行済みかどうか
    required bool done,
  }) = _TodoItem; 
}