import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex_app/src/model/failures/core_failure.dart';
import 'package:pokedex_app/src/model/repositories/interfaces/i_pokemon_repository.dart';
import 'package:pokedex_app/src/view_model/models/pokemon_detail_model.dart';
import 'package:pokedex_app/src/view_model/models/pokemon_list_item_model.dart';

part 'pokemon_event.dart';
part 'pokemon_state.dart';
part 'pokemon_bloc.freezed.dart';

@Singleton()
class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  PokemonBloc(this._pokemonRepository) : super(PokemonState.initial()) {
    on<PokemonEvent>((event, emit) async {
      await event.map(
        getAllPokemon: (GetAllPokemon value) async {
          emit(state.copyWith(isLoading: true));
          final result = await _pokemonRepository.getAllPokemon();
          result.fold(
            (failure) =>
                emit(state.copyWith(isLoading: false, failure: failure)),
            (pokemons) => emit(
              state.copyWith(
                isLoading: false,
                failure: null,
                pokemonList: pokemons,
              ),
            ),
          );
        },
        getSelectedPokemon: (GetSelectedPokemon value) async {
          emit(state.copyWith(isLoading: true));
          final result = await _pokemonRepository.getPokemonDetail(
            url: value.detailUrl,
          );
          result.fold(
            (failure) =>
                emit(state.copyWith(isLoading: false, failure: failure)),
            (pokemon) => emit(
              state.copyWith(
                isLoading: false,
                failure: null,
                selectedPokemon: pokemon,
              ),
            ),
          );
        },
        clearFilter: (ClearFilter value) {},
        filterFavoritePokemons: (FilterFavoritePokemons value) {},
        filterPokemonName: (FilterPokemonName value) {},
      );
    });
  }

  final IPokemonRepository _pokemonRepository;
}
