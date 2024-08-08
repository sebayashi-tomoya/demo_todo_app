// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todoItem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodoItem {
// ID
  String get id => throw _privateConstructorUsedError;

  /// やること
  String get title => throw _privateConstructorUsedError;

  /// 実行日
  DateTime? get executionDate => throw _privateConstructorUsedError;

  /// 実行済みかどうか
  bool get done => throw _privateConstructorUsedError;

  /// 削除済みかどうか
  bool get isDeleted => throw _privateConstructorUsedError;

  /// 更新日時
  DateTime get updated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoItemCopyWith<TodoItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoItemCopyWith<$Res> {
  factory $TodoItemCopyWith(TodoItem value, $Res Function(TodoItem) then) =
      _$TodoItemCopyWithImpl<$Res, TodoItem>;
  @useResult
  $Res call(
      {String id,
      String title,
      DateTime? executionDate,
      bool done,
      bool isDeleted,
      DateTime updated});
}

/// @nodoc
class _$TodoItemCopyWithImpl<$Res, $Val extends TodoItem>
    implements $TodoItemCopyWith<$Res> {
  _$TodoItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? executionDate = freezed,
    Object? done = null,
    Object? isDeleted = null,
    Object? updated = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      executionDate: freezed == executionDate
          ? _value.executionDate
          : executionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoItemImplCopyWith<$Res>
    implements $TodoItemCopyWith<$Res> {
  factory _$$TodoItemImplCopyWith(
          _$TodoItemImpl value, $Res Function(_$TodoItemImpl) then) =
      __$$TodoItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      DateTime? executionDate,
      bool done,
      bool isDeleted,
      DateTime updated});
}

/// @nodoc
class __$$TodoItemImplCopyWithImpl<$Res>
    extends _$TodoItemCopyWithImpl<$Res, _$TodoItemImpl>
    implements _$$TodoItemImplCopyWith<$Res> {
  __$$TodoItemImplCopyWithImpl(
      _$TodoItemImpl _value, $Res Function(_$TodoItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? executionDate = freezed,
    Object? done = null,
    Object? isDeleted = null,
    Object? updated = null,
  }) {
    return _then(_$TodoItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      executionDate: freezed == executionDate
          ? _value.executionDate
          : executionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$TodoItemImpl implements _TodoItem {
  const _$TodoItemImpl(
      {required this.id,
      required this.title,
      required this.executionDate,
      required this.done,
      required this.isDeleted,
      required this.updated});

// ID
  @override
  final String id;

  /// やること
  @override
  final String title;

  /// 実行日
  @override
  final DateTime? executionDate;

  /// 実行済みかどうか
  @override
  final bool done;

  /// 削除済みかどうか
  @override
  final bool isDeleted;

  /// 更新日時
  @override
  final DateTime updated;

  @override
  String toString() {
    return 'TodoItem(id: $id, title: $title, executionDate: $executionDate, done: $done, isDeleted: $isDeleted, updated: $updated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.executionDate, executionDate) ||
                other.executionDate == executionDate) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, executionDate, done, isDeleted, updated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoItemImplCopyWith<_$TodoItemImpl> get copyWith =>
      __$$TodoItemImplCopyWithImpl<_$TodoItemImpl>(this, _$identity);
}

abstract class _TodoItem implements TodoItem {
  const factory _TodoItem(
      {required final String id,
      required final String title,
      required final DateTime? executionDate,
      required final bool done,
      required final bool isDeleted,
      required final DateTime updated}) = _$TodoItemImpl;

  @override // ID
  String get id;
  @override

  /// やること
  String get title;
  @override

  /// 実行日
  DateTime? get executionDate;
  @override

  /// 実行済みかどうか
  bool get done;
  @override

  /// 削除済みかどうか
  bool get isDeleted;
  @override

  /// 更新日時
  DateTime get updated;
  @override
  @JsonKey(ignore: true)
  _$$TodoItemImplCopyWith<_$TodoItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
