import 'package:freezed_annotation/freezed_annotation.dart';

part 'todoGroup.freezed.dart';

@freezed
class TodoGroup with _$TodoGroup {
  const factory TodoGroup({
    // ID
    required String id,
    /// グループ名
    required String name,
    /// 削除済みかどうか
    required bool isDeleted,
    /// 更新日時
    required DateTime updated
  }) = _TodoGroup; 
}