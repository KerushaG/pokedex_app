// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PokemonEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllPokemon,
    required TResult Function(String detailUrl) getSelectedPokemon,
    required TResult Function() clearFilter,
    required TResult Function() filterFavoritePokemons,
    required TResult Function(String name) filterPokemonName,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllPokemon,
    TResult? Function(String detailUrl)? getSelectedPokemon,
    TResult? Function()? clearFilter,
    TResult? Function()? filterFavoritePokemons,
    TResult? Function(String name)? filterPokemonName,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllPokemon,
    TResult Function(String detailUrl)? getSelectedPokemon,
    TResult Function()? clearFilter,
    TResult Function()? filterFavoritePokemons,
    TResult Function(String name)? filterPokemonName,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllPokemon value) getAllPokemon,
    required TResult Function(GetSelectedPokemon value) getSelectedPokemon,
    required TResult Function(ClearFilter value) clearFilter,
    required TResult Function(FilterFavoritePokemons value)
    filterFavoritePokemons,
    required TResult Function(FilterPokemonName value) filterPokemonName,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllPokemon value)? getAllPokemon,
    TResult? Function(GetSelectedPokemon value)? getSelectedPokemon,
    TResult? Function(ClearFilter value)? clearFilter,
    TResult? Function(FilterFavoritePokemons value)? filterFavoritePokemons,
    TResult? Function(FilterPokemonName value)? filterPokemonName,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllPokemon value)? getAllPokemon,
    TResult Function(GetSelectedPokemon value)? getSelectedPokemon,
    TResult Function(ClearFilter value)? clearFilter,
    TResult Function(FilterFavoritePokemons value)? filterFavoritePokemons,
    TResult Function(FilterPokemonName value)? filterPokemonName,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonEventCopyWith<$Res> {
  factory $PokemonEventCopyWith(
    PokemonEvent value,
    $Res Function(PokemonEvent) then,
  ) = _$PokemonEventCopyWithImpl<$Res, PokemonEvent>;
}

/// @nodoc
class _$PokemonEventCopyWithImpl<$Res, $Val extends PokemonEvent>
    implements $PokemonEventCopyWith<$Res> {
  _$PokemonEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetAllPokemonImplCopyWith<$Res> {
  factory _$$GetAllPokemonImplCopyWith(
    _$GetAllPokemonImpl value,
    $Res Function(_$GetAllPokemonImpl) then,
  ) = __$$GetAllPokemonImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllPokemonImplCopyWithImpl<$Res>
    extends _$PokemonEventCopyWithImpl<$Res, _$GetAllPokemonImpl>
    implements _$$GetAllPokemonImplCopyWith<$Res> {
  __$$GetAllPokemonImplCopyWithImpl(
    _$GetAllPokemonImpl _value,
    $Res Function(_$GetAllPokemonImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetAllPokemonImpl implements GetAllPokemon {
  const _$GetAllPokemonImpl();

  @override
  String toString() {
    return 'PokemonEvent.getAllPokemon()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllPokemonImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllPokemon,
    required TResult Function(String detailUrl) getSelectedPokemon,
    required TResult Function() clearFilter,
    required TResult Function() filterFavoritePokemons,
    required TResult Function(String name) filterPokemonName,
  }) {
    return getAllPokemon();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllPokemon,
    TResult? Function(String detailUrl)? getSelectedPokemon,
    TResult? Function()? clearFilter,
    TResult? Function()? filterFavoritePokemons,
    TResult? Function(String name)? filterPokemonName,
  }) {
    return getAllPokemon?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllPokemon,
    TResult Function(String detailUrl)? getSelectedPokemon,
    TResult Function()? clearFilter,
    TResult Function()? filterFavoritePokemons,
    TResult Function(String name)? filterPokemonName,
    required TResult orElse(),
  }) {
    if (getAllPokemon != null) {
      return getAllPokemon();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllPokemon value) getAllPokemon,
    required TResult Function(GetSelectedPokemon value) getSelectedPokemon,
    required TResult Function(ClearFilter value) clearFilter,
    required TResult Function(FilterFavoritePokemons value)
    filterFavoritePokemons,
    required TResult Function(FilterPokemonName value) filterPokemonName,
  }) {
    return getAllPokemon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllPokemon value)? getAllPokemon,
    TResult? Function(GetSelectedPokemon value)? getSelectedPokemon,
    TResult? Function(ClearFilter value)? clearFilter,
    TResult? Function(FilterFavoritePokemons value)? filterFavoritePokemons,
    TResult? Function(FilterPokemonName value)? filterPokemonName,
  }) {
    return getAllPokemon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllPokemon value)? getAllPokemon,
    TResult Function(GetSelectedPokemon value)? getSelectedPokemon,
    TResult Function(ClearFilter value)? clearFilter,
    TResult Function(FilterFavoritePokemons value)? filterFavoritePokemons,
    TResult Function(FilterPokemonName value)? filterPokemonName,
    required TResult orElse(),
  }) {
    if (getAllPokemon != null) {
      return getAllPokemon(this);
    }
    return orElse();
  }
}

abstract class GetAllPokemon implements PokemonEvent {
  const factory GetAllPokemon() = _$GetAllPokemonImpl;
}

/// @nodoc
abstract class _$$GetSelectedPokemonImplCopyWith<$Res> {
  factory _$$GetSelectedPokemonImplCopyWith(
    _$GetSelectedPokemonImpl value,
    $Res Function(_$GetSelectedPokemonImpl) then,
  ) = __$$GetSelectedPokemonImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String detailUrl});
}

/// @nodoc
class __$$GetSelectedPokemonImplCopyWithImpl<$Res>
    extends _$PokemonEventCopyWithImpl<$Res, _$GetSelectedPokemonImpl>
    implements _$$GetSelectedPokemonImplCopyWith<$Res> {
  __$$GetSelectedPokemonImplCopyWithImpl(
    _$GetSelectedPokemonImpl _value,
    $Res Function(_$GetSelectedPokemonImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? detailUrl = null}) {
    return _then(
      _$GetSelectedPokemonImpl(
        null == detailUrl
            ? _value.detailUrl
            : detailUrl // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$GetSelectedPokemonImpl implements GetSelectedPokemon {
  const _$GetSelectedPokemonImpl(this.detailUrl);

  @override
  final String detailUrl;

  @override
  String toString() {
    return 'PokemonEvent.getSelectedPokemon(detailUrl: $detailUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSelectedPokemonImpl &&
            (identical(other.detailUrl, detailUrl) ||
                other.detailUrl == detailUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detailUrl);

  /// Create a copy of PokemonEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSelectedPokemonImplCopyWith<_$GetSelectedPokemonImpl> get copyWith =>
      __$$GetSelectedPokemonImplCopyWithImpl<_$GetSelectedPokemonImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllPokemon,
    required TResult Function(String detailUrl) getSelectedPokemon,
    required TResult Function() clearFilter,
    required TResult Function() filterFavoritePokemons,
    required TResult Function(String name) filterPokemonName,
  }) {
    return getSelectedPokemon(detailUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllPokemon,
    TResult? Function(String detailUrl)? getSelectedPokemon,
    TResult? Function()? clearFilter,
    TResult? Function()? filterFavoritePokemons,
    TResult? Function(String name)? filterPokemonName,
  }) {
    return getSelectedPokemon?.call(detailUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllPokemon,
    TResult Function(String detailUrl)? getSelectedPokemon,
    TResult Function()? clearFilter,
    TResult Function()? filterFavoritePokemons,
    TResult Function(String name)? filterPokemonName,
    required TResult orElse(),
  }) {
    if (getSelectedPokemon != null) {
      return getSelectedPokemon(detailUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllPokemon value) getAllPokemon,
    required TResult Function(GetSelectedPokemon value) getSelectedPokemon,
    required TResult Function(ClearFilter value) clearFilter,
    required TResult Function(FilterFavoritePokemons value)
    filterFavoritePokemons,
    required TResult Function(FilterPokemonName value) filterPokemonName,
  }) {
    return getSelectedPokemon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllPokemon value)? getAllPokemon,
    TResult? Function(GetSelectedPokemon value)? getSelectedPokemon,
    TResult? Function(ClearFilter value)? clearFilter,
    TResult? Function(FilterFavoritePokemons value)? filterFavoritePokemons,
    TResult? Function(FilterPokemonName value)? filterPokemonName,
  }) {
    return getSelectedPokemon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllPokemon value)? getAllPokemon,
    TResult Function(GetSelectedPokemon value)? getSelectedPokemon,
    TResult Function(ClearFilter value)? clearFilter,
    TResult Function(FilterFavoritePokemons value)? filterFavoritePokemons,
    TResult Function(FilterPokemonName value)? filterPokemonName,
    required TResult orElse(),
  }) {
    if (getSelectedPokemon != null) {
      return getSelectedPokemon(this);
    }
    return orElse();
  }
}

abstract class GetSelectedPokemon implements PokemonEvent {
  const factory GetSelectedPokemon(final String detailUrl) =
      _$GetSelectedPokemonImpl;

  String get detailUrl;

  /// Create a copy of PokemonEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSelectedPokemonImplCopyWith<_$GetSelectedPokemonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearFilterImplCopyWith<$Res> {
  factory _$$ClearFilterImplCopyWith(
    _$ClearFilterImpl value,
    $Res Function(_$ClearFilterImpl) then,
  ) = __$$ClearFilterImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearFilterImplCopyWithImpl<$Res>
    extends _$PokemonEventCopyWithImpl<$Res, _$ClearFilterImpl>
    implements _$$ClearFilterImplCopyWith<$Res> {
  __$$ClearFilterImplCopyWithImpl(
    _$ClearFilterImpl _value,
    $Res Function(_$ClearFilterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearFilterImpl implements ClearFilter {
  const _$ClearFilterImpl();

  @override
  String toString() {
    return 'PokemonEvent.clearFilter()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearFilterImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllPokemon,
    required TResult Function(String detailUrl) getSelectedPokemon,
    required TResult Function() clearFilter,
    required TResult Function() filterFavoritePokemons,
    required TResult Function(String name) filterPokemonName,
  }) {
    return clearFilter();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllPokemon,
    TResult? Function(String detailUrl)? getSelectedPokemon,
    TResult? Function()? clearFilter,
    TResult? Function()? filterFavoritePokemons,
    TResult? Function(String name)? filterPokemonName,
  }) {
    return clearFilter?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllPokemon,
    TResult Function(String detailUrl)? getSelectedPokemon,
    TResult Function()? clearFilter,
    TResult Function()? filterFavoritePokemons,
    TResult Function(String name)? filterPokemonName,
    required TResult orElse(),
  }) {
    if (clearFilter != null) {
      return clearFilter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllPokemon value) getAllPokemon,
    required TResult Function(GetSelectedPokemon value) getSelectedPokemon,
    required TResult Function(ClearFilter value) clearFilter,
    required TResult Function(FilterFavoritePokemons value)
    filterFavoritePokemons,
    required TResult Function(FilterPokemonName value) filterPokemonName,
  }) {
    return clearFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllPokemon value)? getAllPokemon,
    TResult? Function(GetSelectedPokemon value)? getSelectedPokemon,
    TResult? Function(ClearFilter value)? clearFilter,
    TResult? Function(FilterFavoritePokemons value)? filterFavoritePokemons,
    TResult? Function(FilterPokemonName value)? filterPokemonName,
  }) {
    return clearFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllPokemon value)? getAllPokemon,
    TResult Function(GetSelectedPokemon value)? getSelectedPokemon,
    TResult Function(ClearFilter value)? clearFilter,
    TResult Function(FilterFavoritePokemons value)? filterFavoritePokemons,
    TResult Function(FilterPokemonName value)? filterPokemonName,
    required TResult orElse(),
  }) {
    if (clearFilter != null) {
      return clearFilter(this);
    }
    return orElse();
  }
}

abstract class ClearFilter implements PokemonEvent {
  const factory ClearFilter() = _$ClearFilterImpl;
}

/// @nodoc
abstract class _$$FilterFavoritePokemonsImplCopyWith<$Res> {
  factory _$$FilterFavoritePokemonsImplCopyWith(
    _$FilterFavoritePokemonsImpl value,
    $Res Function(_$FilterFavoritePokemonsImpl) then,
  ) = __$$FilterFavoritePokemonsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FilterFavoritePokemonsImplCopyWithImpl<$Res>
    extends _$PokemonEventCopyWithImpl<$Res, _$FilterFavoritePokemonsImpl>
    implements _$$FilterFavoritePokemonsImplCopyWith<$Res> {
  __$$FilterFavoritePokemonsImplCopyWithImpl(
    _$FilterFavoritePokemonsImpl _value,
    $Res Function(_$FilterFavoritePokemonsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FilterFavoritePokemonsImpl implements FilterFavoritePokemons {
  const _$FilterFavoritePokemonsImpl();

  @override
  String toString() {
    return 'PokemonEvent.filterFavoritePokemons()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterFavoritePokemonsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllPokemon,
    required TResult Function(String detailUrl) getSelectedPokemon,
    required TResult Function() clearFilter,
    required TResult Function() filterFavoritePokemons,
    required TResult Function(String name) filterPokemonName,
  }) {
    return filterFavoritePokemons();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllPokemon,
    TResult? Function(String detailUrl)? getSelectedPokemon,
    TResult? Function()? clearFilter,
    TResult? Function()? filterFavoritePokemons,
    TResult? Function(String name)? filterPokemonName,
  }) {
    return filterFavoritePokemons?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllPokemon,
    TResult Function(String detailUrl)? getSelectedPokemon,
    TResult Function()? clearFilter,
    TResult Function()? filterFavoritePokemons,
    TResult Function(String name)? filterPokemonName,
    required TResult orElse(),
  }) {
    if (filterFavoritePokemons != null) {
      return filterFavoritePokemons();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllPokemon value) getAllPokemon,
    required TResult Function(GetSelectedPokemon value) getSelectedPokemon,
    required TResult Function(ClearFilter value) clearFilter,
    required TResult Function(FilterFavoritePokemons value)
    filterFavoritePokemons,
    required TResult Function(FilterPokemonName value) filterPokemonName,
  }) {
    return filterFavoritePokemons(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllPokemon value)? getAllPokemon,
    TResult? Function(GetSelectedPokemon value)? getSelectedPokemon,
    TResult? Function(ClearFilter value)? clearFilter,
    TResult? Function(FilterFavoritePokemons value)? filterFavoritePokemons,
    TResult? Function(FilterPokemonName value)? filterPokemonName,
  }) {
    return filterFavoritePokemons?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllPokemon value)? getAllPokemon,
    TResult Function(GetSelectedPokemon value)? getSelectedPokemon,
    TResult Function(ClearFilter value)? clearFilter,
    TResult Function(FilterFavoritePokemons value)? filterFavoritePokemons,
    TResult Function(FilterPokemonName value)? filterPokemonName,
    required TResult orElse(),
  }) {
    if (filterFavoritePokemons != null) {
      return filterFavoritePokemons(this);
    }
    return orElse();
  }
}

abstract class FilterFavoritePokemons implements PokemonEvent {
  const factory FilterFavoritePokemons() = _$FilterFavoritePokemonsImpl;
}

/// @nodoc
abstract class _$$FilterPokemonNameImplCopyWith<$Res> {
  factory _$$FilterPokemonNameImplCopyWith(
    _$FilterPokemonNameImpl value,
    $Res Function(_$FilterPokemonNameImpl) then,
  ) = __$$FilterPokemonNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$FilterPokemonNameImplCopyWithImpl<$Res>
    extends _$PokemonEventCopyWithImpl<$Res, _$FilterPokemonNameImpl>
    implements _$$FilterPokemonNameImplCopyWith<$Res> {
  __$$FilterPokemonNameImplCopyWithImpl(
    _$FilterPokemonNameImpl _value,
    $Res Function(_$FilterPokemonNameImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null}) {
    return _then(
      _$FilterPokemonNameImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$FilterPokemonNameImpl implements FilterPokemonName {
  const _$FilterPokemonNameImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'PokemonEvent.filterPokemonName(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterPokemonNameImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of PokemonEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterPokemonNameImplCopyWith<_$FilterPokemonNameImpl> get copyWith =>
      __$$FilterPokemonNameImplCopyWithImpl<_$FilterPokemonNameImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllPokemon,
    required TResult Function(String detailUrl) getSelectedPokemon,
    required TResult Function() clearFilter,
    required TResult Function() filterFavoritePokemons,
    required TResult Function(String name) filterPokemonName,
  }) {
    return filterPokemonName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllPokemon,
    TResult? Function(String detailUrl)? getSelectedPokemon,
    TResult? Function()? clearFilter,
    TResult? Function()? filterFavoritePokemons,
    TResult? Function(String name)? filterPokemonName,
  }) {
    return filterPokemonName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllPokemon,
    TResult Function(String detailUrl)? getSelectedPokemon,
    TResult Function()? clearFilter,
    TResult Function()? filterFavoritePokemons,
    TResult Function(String name)? filterPokemonName,
    required TResult orElse(),
  }) {
    if (filterPokemonName != null) {
      return filterPokemonName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllPokemon value) getAllPokemon,
    required TResult Function(GetSelectedPokemon value) getSelectedPokemon,
    required TResult Function(ClearFilter value) clearFilter,
    required TResult Function(FilterFavoritePokemons value)
    filterFavoritePokemons,
    required TResult Function(FilterPokemonName value) filterPokemonName,
  }) {
    return filterPokemonName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllPokemon value)? getAllPokemon,
    TResult? Function(GetSelectedPokemon value)? getSelectedPokemon,
    TResult? Function(ClearFilter value)? clearFilter,
    TResult? Function(FilterFavoritePokemons value)? filterFavoritePokemons,
    TResult? Function(FilterPokemonName value)? filterPokemonName,
  }) {
    return filterPokemonName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllPokemon value)? getAllPokemon,
    TResult Function(GetSelectedPokemon value)? getSelectedPokemon,
    TResult Function(ClearFilter value)? clearFilter,
    TResult Function(FilterFavoritePokemons value)? filterFavoritePokemons,
    TResult Function(FilterPokemonName value)? filterPokemonName,
    required TResult orElse(),
  }) {
    if (filterPokemonName != null) {
      return filterPokemonName(this);
    }
    return orElse();
  }
}

abstract class FilterPokemonName implements PokemonEvent {
  const factory FilterPokemonName({required final String name}) =
      _$FilterPokemonNameImpl;

  String get name;

  /// Create a copy of PokemonEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterPokemonNameImplCopyWith<_$FilterPokemonNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PokemonState {
  CoreFailure? get failure => throw _privateConstructorUsedError;
  List<PokemonListItemModel>? get pokemonList =>
      throw _privateConstructorUsedError;
  PokemonDetailModel? get selectedPokemon => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of PokemonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonStateCopyWith<PokemonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStateCopyWith<$Res> {
  factory $PokemonStateCopyWith(
    PokemonState value,
    $Res Function(PokemonState) then,
  ) = _$PokemonStateCopyWithImpl<$Res, PokemonState>;
  @useResult
  $Res call({
    CoreFailure? failure,
    List<PokemonListItemModel>? pokemonList,
    PokemonDetailModel? selectedPokemon,
    bool isLoading,
  });
}

/// @nodoc
class _$PokemonStateCopyWithImpl<$Res, $Val extends PokemonState>
    implements $PokemonStateCopyWith<$Res> {
  _$PokemonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? pokemonList = freezed,
    Object? selectedPokemon = freezed,
    Object? isLoading = null,
  }) {
    return _then(
      _value.copyWith(
            failure:
                freezed == failure
                    ? _value.failure
                    : failure // ignore: cast_nullable_to_non_nullable
                        as CoreFailure?,
            pokemonList:
                freezed == pokemonList
                    ? _value.pokemonList
                    : pokemonList // ignore: cast_nullable_to_non_nullable
                        as List<PokemonListItemModel>?,
            selectedPokemon:
                freezed == selectedPokemon
                    ? _value.selectedPokemon
                    : selectedPokemon // ignore: cast_nullable_to_non_nullable
                        as PokemonDetailModel?,
            isLoading:
                null == isLoading
                    ? _value.isLoading
                    : isLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PokemonStateImplCopyWith<$Res>
    implements $PokemonStateCopyWith<$Res> {
  factory _$$PokemonStateImplCopyWith(
    _$PokemonStateImpl value,
    $Res Function(_$PokemonStateImpl) then,
  ) = __$$PokemonStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    CoreFailure? failure,
    List<PokemonListItemModel>? pokemonList,
    PokemonDetailModel? selectedPokemon,
    bool isLoading,
  });
}

/// @nodoc
class __$$PokemonStateImplCopyWithImpl<$Res>
    extends _$PokemonStateCopyWithImpl<$Res, _$PokemonStateImpl>
    implements _$$PokemonStateImplCopyWith<$Res> {
  __$$PokemonStateImplCopyWithImpl(
    _$PokemonStateImpl _value,
    $Res Function(_$PokemonStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? pokemonList = freezed,
    Object? selectedPokemon = freezed,
    Object? isLoading = null,
  }) {
    return _then(
      _$PokemonStateImpl(
        failure:
            freezed == failure
                ? _value.failure
                : failure // ignore: cast_nullable_to_non_nullable
                    as CoreFailure?,
        pokemonList:
            freezed == pokemonList
                ? _value._pokemonList
                : pokemonList // ignore: cast_nullable_to_non_nullable
                    as List<PokemonListItemModel>?,
        selectedPokemon:
            freezed == selectedPokemon
                ? _value.selectedPokemon
                : selectedPokemon // ignore: cast_nullable_to_non_nullable
                    as PokemonDetailModel?,
        isLoading:
            null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$PokemonStateImpl implements _PokemonState {
  const _$PokemonStateImpl({
    required this.failure,
    required final List<PokemonListItemModel>? pokemonList,
    required this.selectedPokemon,
    this.isLoading = false,
  }) : _pokemonList = pokemonList;

  @override
  final CoreFailure? failure;
  final List<PokemonListItemModel>? _pokemonList;
  @override
  List<PokemonListItemModel>? get pokemonList {
    final value = _pokemonList;
    if (value == null) return null;
    if (_pokemonList is EqualUnmodifiableListView) return _pokemonList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PokemonDetailModel? selectedPokemon;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'PokemonState(failure: $failure, pokemonList: $pokemonList, selectedPokemon: $selectedPokemon, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonStateImpl &&
            (identical(other.failure, failure) || other.failure == failure) &&
            const DeepCollectionEquality().equals(
              other._pokemonList,
              _pokemonList,
            ) &&
            (identical(other.selectedPokemon, selectedPokemon) ||
                other.selectedPokemon == selectedPokemon) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    failure,
    const DeepCollectionEquality().hash(_pokemonList),
    selectedPokemon,
    isLoading,
  );

  /// Create a copy of PokemonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonStateImplCopyWith<_$PokemonStateImpl> get copyWith =>
      __$$PokemonStateImplCopyWithImpl<_$PokemonStateImpl>(this, _$identity);
}

abstract class _PokemonState implements PokemonState {
  const factory _PokemonState({
    required final CoreFailure? failure,
    required final List<PokemonListItemModel>? pokemonList,
    required final PokemonDetailModel? selectedPokemon,
    final bool isLoading,
  }) = _$PokemonStateImpl;

  @override
  CoreFailure? get failure;
  @override
  List<PokemonListItemModel>? get pokemonList;
  @override
  PokemonDetailModel? get selectedPokemon;
  @override
  bool get isLoading;

  /// Create a copy of PokemonState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonStateImplCopyWith<_$PokemonStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
