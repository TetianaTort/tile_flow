// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ItemsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() increment,
    required TResult Function() decrement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? increment,
    TResult? Function()? decrement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? increment,
    TResult Function()? decrement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncrementItemsEvent value) increment,
    required TResult Function(_DecrementItemsEvent value) decrement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncrementItemsEvent value)? increment,
    TResult? Function(_DecrementItemsEvent value)? decrement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncrementItemsEvent value)? increment,
    TResult Function(_DecrementItemsEvent value)? decrement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsEventCopyWith<$Res> {
  factory $ItemsEventCopyWith(
          ItemsEvent value, $Res Function(ItemsEvent) then) =
      _$ItemsEventCopyWithImpl<$Res, ItemsEvent>;
}

/// @nodoc
class _$ItemsEventCopyWithImpl<$Res, $Val extends ItemsEvent>
    implements $ItemsEventCopyWith<$Res> {
  _$ItemsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$IncrementItemsEventImplCopyWith<$Res> {
  factory _$$IncrementItemsEventImplCopyWith(_$IncrementItemsEventImpl value,
          $Res Function(_$IncrementItemsEventImpl) then) =
      __$$IncrementItemsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IncrementItemsEventImplCopyWithImpl<$Res>
    extends _$ItemsEventCopyWithImpl<$Res, _$IncrementItemsEventImpl>
    implements _$$IncrementItemsEventImplCopyWith<$Res> {
  __$$IncrementItemsEventImplCopyWithImpl(_$IncrementItemsEventImpl _value,
      $Res Function(_$IncrementItemsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IncrementItemsEventImpl implements _IncrementItemsEvent {
  const _$IncrementItemsEventImpl();

  @override
  String toString() {
    return 'ItemsEvent.increment()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncrementItemsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() increment,
    required TResult Function() decrement,
  }) {
    return increment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? increment,
    TResult? Function()? decrement,
  }) {
    return increment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? increment,
    TResult Function()? decrement,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncrementItemsEvent value) increment,
    required TResult Function(_DecrementItemsEvent value) decrement,
  }) {
    return increment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncrementItemsEvent value)? increment,
    TResult? Function(_DecrementItemsEvent value)? decrement,
  }) {
    return increment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncrementItemsEvent value)? increment,
    TResult Function(_DecrementItemsEvent value)? decrement,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment(this);
    }
    return orElse();
  }
}

abstract class _IncrementItemsEvent implements ItemsEvent {
  const factory _IncrementItemsEvent() = _$IncrementItemsEventImpl;
}

/// @nodoc
abstract class _$$DecrementItemsEventImplCopyWith<$Res> {
  factory _$$DecrementItemsEventImplCopyWith(_$DecrementItemsEventImpl value,
          $Res Function(_$DecrementItemsEventImpl) then) =
      __$$DecrementItemsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DecrementItemsEventImplCopyWithImpl<$Res>
    extends _$ItemsEventCopyWithImpl<$Res, _$DecrementItemsEventImpl>
    implements _$$DecrementItemsEventImplCopyWith<$Res> {
  __$$DecrementItemsEventImplCopyWithImpl(_$DecrementItemsEventImpl _value,
      $Res Function(_$DecrementItemsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DecrementItemsEventImpl implements _DecrementItemsEvent {
  const _$DecrementItemsEventImpl();

  @override
  String toString() {
    return 'ItemsEvent.decrement()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecrementItemsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() increment,
    required TResult Function() decrement,
  }) {
    return decrement();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? increment,
    TResult? Function()? decrement,
  }) {
    return decrement?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? increment,
    TResult Function()? decrement,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncrementItemsEvent value) increment,
    required TResult Function(_DecrementItemsEvent value) decrement,
  }) {
    return decrement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncrementItemsEvent value)? increment,
    TResult? Function(_DecrementItemsEvent value)? decrement,
  }) {
    return decrement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncrementItemsEvent value)? increment,
    TResult Function(_DecrementItemsEvent value)? decrement,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement(this);
    }
    return orElse();
  }
}

abstract class _DecrementItemsEvent implements ItemsEvent {
  const factory _DecrementItemsEvent() = _$DecrementItemsEventImpl;
}
