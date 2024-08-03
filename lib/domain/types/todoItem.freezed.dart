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
// やること
  String get todo => throw _privateConstructorUsedError; // 日付
  DateTime get executionDate => throw _privateConstructorUsedError; // 実行済みかどうか
  bool get done => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoItemCopyWith<TodoItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoItemCopyWith<$Res> {
  factory $TodoItemCopyWith(TodoItem value, $Res Function(TodoItem) then) =
      _$TodoItemCopyWithImpl<$Res, TodoItem>;
  @useResult
  $Res call({String todo, DateTime executionDate, bool done});
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
    Object? todo = null,
    Object? executionDate = null,
    Object? done = null,
  }) {
    return _then(_value.copyWith(
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as String,
      executionDate: null == executionDate
          ? _value.executionDate
          : executionDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $Res call({String todo, DateTime executionDate, bool done});
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
    Object? todo = null,
    Object? executionDate = null,
    Object? done = null,
  }) {
    return _then(_$TodoItemImpl(
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as String,
      executionDate: null == executionDate
          ? _value.executionDate
          : executionDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TodoItemImpl implements _TodoItem {
  const _$TodoItemImpl(
      {required this.todo, required this.executionDate, required this.done});

// やること
  @override
  final String todo;
// 日付
  @override
  final DateTime executionDate;
// 実行済みかどうか
  @override
  final bool done;

  @override
  String toString() {
    return 'TodoItem(todo: $todo, executionDate: $executionDate, done: $done)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoItemImpl &&
            (identical(other.todo, todo) || other.todo == todo) &&
            (identical(other.executionDate, executionDate) ||
                other.executionDate == executionDate) &&
            (identical(other.done, done) || other.done == done));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo, executionDate, done);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoItemImplCopyWith<_$TodoItemImpl> get copyWith =>
      __$$TodoItemImplCopyWithImpl<_$TodoItemImpl>(this, _$identity);
}

abstract class _TodoItem implements TodoItem {
  const factory _TodoItem(
      {required final String todo,
      required final DateTime executionDate,
      required final bool done}) = _$TodoItemImpl;

  @override // やること
  String get todo;
  @override // 日付
  DateTime get executionDate;
  @override // 実行済みかどうか
  bool get done;
  @override
  @JsonKey(ignore: true)
  _$$TodoItemImplCopyWith<_$TodoItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
