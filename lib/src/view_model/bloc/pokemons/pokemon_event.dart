part of 'pokemon_bloc.dart';

@freezed
class PokemonEvent with _$PokemonEvent {
  const factory PokemonEvent.getAllPokemon() = GetAllPokemon;
  const factory PokemonEvent.getSelectedPokemon(String detailUrl) =
      GetSelectedPokemon;
  const factory PokemonEvent.clearFilter() = ClearFilter;

  const factory PokemonEvent.filterFavoritePokemons() = FilterFavoritePokemons;
  const factory PokemonEvent.filterPokemonName({required String name}) =
      FilterPokemonName;
}
