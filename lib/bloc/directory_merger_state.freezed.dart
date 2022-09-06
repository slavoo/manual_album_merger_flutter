// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'directory_merger_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DirectoryMergerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(
            List<String> a, List<String> b, String outDir, int currentIdx)
        ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(
            List<String> a, List<String> b, String outDir, int currentIdx)?
        ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(
            List<String> a, List<String> b, String outDir, int currentIdx)?
        ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Ready value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Ready value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Ready value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectoryMergerStateCopyWith<$Res> {
  factory $DirectoryMergerStateCopyWith(DirectoryMergerState value,
          $Res Function(DirectoryMergerState) then) =
      _$DirectoryMergerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DirectoryMergerStateCopyWithImpl<$Res>
    implements $DirectoryMergerStateCopyWith<$Res> {
  _$DirectoryMergerStateCopyWithImpl(this._value, this._then);

  final DirectoryMergerState _value;
  // ignore: unused_field
  final $Res Function(DirectoryMergerState) _then;
}

/// @nodoc
abstract class _$$InitCopyWith<$Res> {
  factory _$$InitCopyWith(_$Init value, $Res Function(_$Init) then) =
      __$$InitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitCopyWithImpl<$Res>
    extends _$DirectoryMergerStateCopyWithImpl<$Res>
    implements _$$InitCopyWith<$Res> {
  __$$InitCopyWithImpl(_$Init _value, $Res Function(_$Init) _then)
      : super(_value, (v) => _then(v as _$Init));

  @override
  _$Init get _value => super._value as _$Init;
}

/// @nodoc

class _$Init implements Init {
  const _$Init();

  @override
  String toString() {
    return 'DirectoryMergerState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(
            List<String> a, List<String> b, String outDir, int currentIdx)
        ready,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(
            List<String> a, List<String> b, String outDir, int currentIdx)?
        ready,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(
            List<String> a, List<String> b, String outDir, int currentIdx)?
        ready,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Ready value) ready,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Ready value)? ready,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Ready value)? ready,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements DirectoryMergerState {
  const factory Init() = _$Init;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$DirectoryMergerStateCopyWithImpl<$Res>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, (v) => _then(v as _$Loading));

  @override
  _$Loading get _value => super._value as _$Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'DirectoryMergerState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(
            List<String> a, List<String> b, String outDir, int currentIdx)
        ready,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(
            List<String> a, List<String> b, String outDir, int currentIdx)?
        ready,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(
            List<String> a, List<String> b, String outDir, int currentIdx)?
        ready,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Ready value) ready,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Ready value)? ready,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Ready value)? ready,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements DirectoryMergerState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$DirectoryMergerStateCopyWithImpl<$Res>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, (v) => _then(v as _$Error));

  @override
  _$Error get _value => super._value as _$Error;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$Error(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'DirectoryMergerState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(
            List<String> a, List<String> b, String outDir, int currentIdx)
        ready,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(
            List<String> a, List<String> b, String outDir, int currentIdx)?
        ready,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(
            List<String> a, List<String> b, String outDir, int currentIdx)?
        ready,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Ready value) ready,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Ready value)? ready,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Ready value)? ready,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements DirectoryMergerState {
  const factory Error(final String message) = _$Error;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReadyCopyWith<$Res> {
  factory _$$ReadyCopyWith(_$Ready value, $Res Function(_$Ready) then) =
      __$$ReadyCopyWithImpl<$Res>;
  $Res call({List<String> a, List<String> b, String outDir, int currentIdx});
}

/// @nodoc
class __$$ReadyCopyWithImpl<$Res>
    extends _$DirectoryMergerStateCopyWithImpl<$Res>
    implements _$$ReadyCopyWith<$Res> {
  __$$ReadyCopyWithImpl(_$Ready _value, $Res Function(_$Ready) _then)
      : super(_value, (v) => _then(v as _$Ready));

  @override
  _$Ready get _value => super._value as _$Ready;

  @override
  $Res call({
    Object? a = freezed,
    Object? b = freezed,
    Object? outDir = freezed,
    Object? currentIdx = freezed,
  }) {
    return _then(_$Ready(
      a == freezed
          ? _value._a
          : a // ignore: cast_nullable_to_non_nullable
              as List<String>,
      b == freezed
          ? _value._b
          : b // ignore: cast_nullable_to_non_nullable
              as List<String>,
      outDir == freezed
          ? _value.outDir
          : outDir // ignore: cast_nullable_to_non_nullable
              as String,
      currentIdx == freezed
          ? _value.currentIdx
          : currentIdx // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Ready implements Ready {
  const _$Ready(
      final List<String> a, final List<String> b, this.outDir, this.currentIdx)
      : _a = a,
        _b = b;

  final List<String> _a;
  @override
  List<String> get a {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_a);
  }

  final List<String> _b;
  @override
  List<String> get b {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_b);
  }

  @override
  final String outDir;
  @override
  final int currentIdx;

  @override
  String toString() {
    return 'DirectoryMergerState.ready(a: $a, b: $b, outDir: $outDir, currentIdx: $currentIdx)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Ready &&
            const DeepCollectionEquality().equals(other._a, _a) &&
            const DeepCollectionEquality().equals(other._b, _b) &&
            const DeepCollectionEquality().equals(other.outDir, outDir) &&
            const DeepCollectionEquality()
                .equals(other.currentIdx, currentIdx));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_a),
      const DeepCollectionEquality().hash(_b),
      const DeepCollectionEquality().hash(outDir),
      const DeepCollectionEquality().hash(currentIdx));

  @JsonKey(ignore: true)
  @override
  _$$ReadyCopyWith<_$Ready> get copyWith =>
      __$$ReadyCopyWithImpl<_$Ready>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(
            List<String> a, List<String> b, String outDir, int currentIdx)
        ready,
  }) {
    return ready(a, b, outDir, currentIdx);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(
            List<String> a, List<String> b, String outDir, int currentIdx)?
        ready,
  }) {
    return ready?.call(a, b, outDir, currentIdx);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(
            List<String> a, List<String> b, String outDir, int currentIdx)?
        ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(a, b, outDir, currentIdx);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Ready value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Ready value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Ready value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class Ready implements DirectoryMergerState {
  const factory Ready(final List<String> a, final List<String> b,
      final String outDir, final int currentIdx) = _$Ready;

  List<String> get a;
  List<String> get b;
  String get outDir;
  int get currentIdx;
  @JsonKey(ignore: true)
  _$$ReadyCopyWith<_$Ready> get copyWith => throw _privateConstructorUsedError;
}
