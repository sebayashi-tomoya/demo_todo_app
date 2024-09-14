// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todoGroup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodoGroup {
  /// ID
  String get id => throw _privateConstructorUsedError;

  /// グループ名
  String get name => throw _privateConstructorUsedError;

  /// 削除済みかどうか
  bool get isDeleted => throw _privateConstructorUsedError;

  /// 更新日時
  DateTime get updated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoGroupCopyWith<TodoGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoGroupCopyWith<$Res> {
  factory $TodoGroupCopyWith(TodoGroup value, $Res Function(TodoGroup) then) =
      _$TodoGroupCopyWithImpl<$Res, TodoGroup>;
  @useResult
  $Res call({String id, String name, bool isDeleted, DateTime updated});
}

/// @nodoc
class _$TodoGroupCopyWithImpl<$Res, $Val extends TodoGroup>
    implements $TodoGroupCopyWith<$Res> {
  _$TodoGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isDeleted = null,
    Object? updated = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$TodoGroupImplCopyWith<$Res>
    implements $TodoGroupCopyWith<$Res> {
  factory _$$TodoGroupImplCopyWith(
          _$TodoGroupImpl value, $Res Function(_$TodoGroupImpl) then) =
      __$$TodoGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, bool isDeleted, DateTime updated});
}

/// @nodoc
class __$$TodoGroupImplCopyWithImpl<$Res>
    extends _$TodoGroupCopyWithImpl<$Res, _$TodoGroupImpl>
    implements _$$TodoGroupImplCopyWith<$Res> {
  __$$TodoGroupImplCopyWithImpl(
      _$TodoGroupImpl _value, $Res Function(_$TodoGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isDeleted = null,
    Object? updated = null,
  }) {
    return _then(_$TodoGroupImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$TodoGroupImpl implements _TodoGroup {
  const _$TodoGroupImpl(
      {required this.id,
      required this.name,
      required this.isDeleted,
      required this.updated});

  /// ID
  @override
  final String id;

  /// グループ名
  @override
  final String name;

  /// 削除済みかどうか
  @override
  final bool isDeleted;

  /// 更新日時
  @override
  final DateTime updated;

  @override
  String toString() {
    return 'TodoGroup(id: $id, name: $name, isDeleted: $isDeleted, updated: $updated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, isDeleted, updated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoGroupImplCopyWith<_$TodoGroupImpl> get copyWith =>
      __$$TodoGroupImplCopyWithImpl<_$TodoGroupImpl>(this, _$identity);
}

abstract class _TodoGroup implements TodoGroup {
  const factory _TodoGroup(
      {required final String id,
      required final String name,
      required final bool isDeleted,
      required final DateTime updated}) = _$TodoGroupImpl;

  @override

  /// ID
  String get id;
  @override

  /// グループ名
  String get name;
  @override

  /// 削除済みかどうか
  bool get isDeleted;
  @override

  /// 更新日時
  DateTime get updated;
  @override
  @JsonKey(ignore: true)
  _$$TodoGroupImplCopyWith<_$TodoGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
