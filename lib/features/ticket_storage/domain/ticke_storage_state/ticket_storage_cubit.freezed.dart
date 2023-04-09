// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_storage_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TicketStorageState _$TicketStorageStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'empty':
      return _TicketStorageStateEmpty.fromJson(json);
    case 'loaded':
      return _TicketStorageStateLoaded.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'TicketStorageState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$TicketStorageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<Ticket> tickets) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(List<Ticket> tickets)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Ticket> tickets)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketStorageStateEmpty value) empty,
    required TResult Function(_TicketStorageStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketStorageStateEmpty value)? empty,
    TResult? Function(_TicketStorageStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketStorageStateEmpty value)? empty,
    TResult Function(_TicketStorageStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketStorageStateCopyWith<$Res> {
  factory $TicketStorageStateCopyWith(
          TicketStorageState value, $Res Function(TicketStorageState) then) =
      _$TicketStorageStateCopyWithImpl<$Res, TicketStorageState>;
}

/// @nodoc
class _$TicketStorageStateCopyWithImpl<$Res, $Val extends TicketStorageState>
    implements $TicketStorageStateCopyWith<$Res> {
  _$TicketStorageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TicketStorageStateEmptyCopyWith<$Res> {
  factory _$$_TicketStorageStateEmptyCopyWith(_$_TicketStorageStateEmpty value,
          $Res Function(_$_TicketStorageStateEmpty) then) =
      __$$_TicketStorageStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TicketStorageStateEmptyCopyWithImpl<$Res>
    extends _$TicketStorageStateCopyWithImpl<$Res, _$_TicketStorageStateEmpty>
    implements _$$_TicketStorageStateEmptyCopyWith<$Res> {
  __$$_TicketStorageStateEmptyCopyWithImpl(_$_TicketStorageStateEmpty _value,
      $Res Function(_$_TicketStorageStateEmpty) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_TicketStorageStateEmpty implements _TicketStorageStateEmpty {
  _$_TicketStorageStateEmpty({final String? $type}) : $type = $type ?? 'empty';

  factory _$_TicketStorageStateEmpty.fromJson(Map<String, dynamic> json) =>
      _$$_TicketStorageStateEmptyFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TicketStorageState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketStorageStateEmpty);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<Ticket> tickets) loaded,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(List<Ticket> tickets)? loaded,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Ticket> tickets)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketStorageStateEmpty value) empty,
    required TResult Function(_TicketStorageStateLoaded value) loaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketStorageStateEmpty value)? empty,
    TResult? Function(_TicketStorageStateLoaded value)? loaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketStorageStateEmpty value)? empty,
    TResult Function(_TicketStorageStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_TicketStorageStateEmptyToJson(
      this,
    );
  }
}

abstract class _TicketStorageStateEmpty implements TicketStorageState {
  factory _TicketStorageStateEmpty() = _$_TicketStorageStateEmpty;

  factory _TicketStorageStateEmpty.fromJson(Map<String, dynamic> json) =
      _$_TicketStorageStateEmpty.fromJson;
}

/// @nodoc
abstract class _$$_TicketStorageStateLoadedCopyWith<$Res> {
  factory _$$_TicketStorageStateLoadedCopyWith(
          _$_TicketStorageStateLoaded value,
          $Res Function(_$_TicketStorageStateLoaded) then) =
      __$$_TicketStorageStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Ticket> tickets});
}

/// @nodoc
class __$$_TicketStorageStateLoadedCopyWithImpl<$Res>
    extends _$TicketStorageStateCopyWithImpl<$Res, _$_TicketStorageStateLoaded>
    implements _$$_TicketStorageStateLoadedCopyWith<$Res> {
  __$$_TicketStorageStateLoadedCopyWithImpl(_$_TicketStorageStateLoaded _value,
      $Res Function(_$_TicketStorageStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tickets = null,
  }) {
    return _then(_$_TicketStorageStateLoaded(
      null == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TicketStorageStateLoaded implements _TicketStorageStateLoaded {
  _$_TicketStorageStateLoaded(final List<Ticket> tickets, {final String? $type})
      : _tickets = tickets,
        $type = $type ?? 'loaded';

  factory _$_TicketStorageStateLoaded.fromJson(Map<String, dynamic> json) =>
      _$$_TicketStorageStateLoadedFromJson(json);

  final List<Ticket> _tickets;
  @override
  List<Ticket> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TicketStorageState.loaded(tickets: $tickets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketStorageStateLoaded &&
            const DeepCollectionEquality().equals(other._tickets, _tickets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tickets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketStorageStateLoadedCopyWith<_$_TicketStorageStateLoaded>
      get copyWith => __$$_TicketStorageStateLoadedCopyWithImpl<
          _$_TicketStorageStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<Ticket> tickets) loaded,
  }) {
    return loaded(tickets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(List<Ticket> tickets)? loaded,
  }) {
    return loaded?.call(tickets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Ticket> tickets)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tickets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketStorageStateEmpty value) empty,
    required TResult Function(_TicketStorageStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketStorageStateEmpty value)? empty,
    TResult? Function(_TicketStorageStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketStorageStateEmpty value)? empty,
    TResult Function(_TicketStorageStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_TicketStorageStateLoadedToJson(
      this,
    );
  }
}

abstract class _TicketStorageStateLoaded implements TicketStorageState {
  factory _TicketStorageStateLoaded(final List<Ticket> tickets) =
      _$_TicketStorageStateLoaded;

  factory _TicketStorageStateLoaded.fromJson(Map<String, dynamic> json) =
      _$_TicketStorageStateLoaded.fromJson;

  List<Ticket> get tickets;
  @JsonKey(ignore: true)
  _$$_TicketStorageStateLoadedCopyWith<_$_TicketStorageStateLoaded>
      get copyWith => throw _privateConstructorUsedError;
}
