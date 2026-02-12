import 'package:injectable/injectable.dart';
import 'package:pokedex_app/src/model/services/interfaces/i_storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IStorageService)
class StorageService implements IStorageService {
  static const _key = 'pokemon_name';
  @override
  Future<void> addFavoritePokemon(String pokemonName) async {
    final prefs = await SharedPreferences.getInstance();
    final list = await fetchFavoritePokemons();
    list.add(pokemonName);
    await prefs.setStringList(_key, list.map((e) => e.toString()).toList());
  }

  @override
  Future<List<String>> fetchFavoritePokemons() async {
    final prefs = await SharedPreferences.getInstance();
    final list = prefs.getStringList(_key) ?? [];
    return list;
  }

  @override
  Future<void> removeFavoritePokemon(String pokemonName) async {
    final prefs = await SharedPreferences.getInstance();
    final list = await fetchFavoritePokemons();
    list.remove(pokemonName);
    await prefs.setStringList(_key, list.map((e) => e.toString()).toList());
  }
}
