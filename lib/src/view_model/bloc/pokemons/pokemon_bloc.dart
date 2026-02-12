import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex_app/src/model/failures/core_failure.dart';
import 'package:pokedex_app/src/model/repositories/interfaces/i_pokemon_repository.dart';
import 'package:pokedex_app/src/model/services/interfaces/i_storage_service.dart';
import 'package:pokedex_app/src/view_model/models/pokemon_detail_model.dart';
import 'package:pokedex_app/src/view_model/models/pokemon_list_item_model.dart';

part 'pokemon_event.dart';
part 'pokemon_state.dart';
part 'pokemon_bloc.freezed.dart';

@Singleton()
class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  PokemonBloc(this._pokemonRepository, this._storageService)
    : super(PokemonState.initial()) {
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
        filterFavoritePokemons: (FilterFavoritePokemons value) async {
          final favoritePokemons =
              state.pokemonList?.where((p) => p.isFavourite).toList();
          emit(
            state.copyWith(
              isLoading: false,
              failure: null,
              pokemonList: favoritePokemons,
            ),
          );
        },
        fetchFavoritePokemons: (FetchFavoritePokemons value) async {
          final list = await _storageService.fetchFavoritePokemons();

          emit(state.copyWith(favoritePokemons: list));
        },
        addFavoritePokemon: (AddFavoritePokemon value) async {
          await _storageService.addFavoritePokemon(value.name);
          final list = await _storageService.fetchFavoritePokemons();
          emit(state.copyWith(favoritePokemons: list));
        },
        removeFavoritePokemon: (RemoveFavoritePokemon value) async {
          await _storageService.removeFavoritePokemon(value.name);
          final list = await _storageService.fetchFavoritePokemons();
          emit(state.copyWith(favoritePokemons: list));
        },
      );
    });
  }

  final IPokemonRepository _pokemonRepository;
  final IStorageService _storageService;
}
