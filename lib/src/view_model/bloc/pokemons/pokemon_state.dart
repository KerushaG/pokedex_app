part of 'pokemon_bloc.dart';

@freezed
class PokemonState with _$PokemonState {
  const factory PokemonState({
    required CoreFailure? failure,
    required List<PokemonListItemModel>? pokemonList,
    required PokemonDetailModel? selectedPokemon,
    required List<String>? favoritePokemons,
    @Default(false) bool isLoading,
  }) = _PokemonState;
  factory PokemonState.initial() => PokemonState(
    failure: null,
    pokemonList: null,
    selectedPokemon: null,
    isLoading: false,
    favoritePokemons: null,
  );
}
