import 'package:freezed_annotation/freezed_annotation.dart';

part 'todoItem.freezed.dart';

@freezed
class TodoItem with _$TodoItem {
  const factory TodoItem({
    /// ID
    required String id,
    /// 所属グループID
    required String groupId,
    /// やること
    required String title,
    /// 実行日
    required DateTime? executionDate,
    /// 実行済みかどうか
    required bool done,
    /// 削除済みかどうか
    required bool isDeleted,
    /// 更新日時
    required DateTime updated
  }) = _TodoItem; 
}