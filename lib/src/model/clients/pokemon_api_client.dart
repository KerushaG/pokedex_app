import 'package:dio/dio.dart';
import 'package:pokedex_app/src/model/clients/dio_client.dart';

class PokemonService {
  final _dio = DioClient.dio;

  Future<List<HomePokemonListItem>> fetchPokemons({
    int limit = 20,
    int offset = 0,
  }) async {
    try {
      final response = await _dio.get(
        '/pokemon',
        queryParameters: {'limit': limit, 'offset': offset},
      );
      final List results = response.data['results'] as List;

      final List<HomePokemonListItem> pokemonList = [];
      for (final item in results) {
        final String name = item['name'] as String;
        final String url = item['url'] as String;

        final detailResponse = await _dio.get(url);
        final imageUrl =
            detailResponse
                    .data['sprites']['other']['official-artwork']['front_shiny']
                as String?;
        pokemonList.add(
          HomePokemonListItem(pokemonUrl: url, name: name, imageUrl: imageUrl),
        );
      }

      return pokemonList;
    } on DioException catch (e) {
      throw _handleDioException(e);
    }
  }

  Future<PokemonDetail> fetchPokemonDetailObject(String url) async {
    try {
      final response = await _dio.get(url);

      final types =
          (response.data['types'] as List)
              .map((e) => e['type']['name'] as String)
              .toList();

      final statsMain = response.data['stats'] as List;

      final statsObject =
          statsMain
              .map(
                (e) => PokemonStats(
                  statDesc: e['stat']['name'] as String,
                  statistic: e['base_stat'] as int,
                ),
              )
              .toList();

      final imageUrl =
          response.data['sprites']['other']['dream_world']['front_default']
              as String?;

      final descriptionUrl = response.data['species']['url'] as String;

      final descriptionResults = await _dio.get(descriptionUrl);

      final entries =
          (descriptionResults.data['flavor_text_entries'] as List)
              .cast<Map<String, dynamic>>();

      final englishEntries =
          entries.where((e) => e['language']['name'] == 'en').toList();

      final description = cleanDescription(
        englishEntries.first['flavor_text'] as String,
      );

      return PokemonDetail(
        type: types,
        stats: statsObject,
        imageUrl: imageUrl,
        description: description,
      );
    } on DioException catch (e) {
      throw _handleDioException(e);
    }
  }

  /// Handles [DioException] and returns a descriptive [Exception].
  static Exception _handleDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return Exception('Request timed out: ${e.message}');
      case DioExceptionType.connectionError:
        return Exception('No connection: ${e.message}');
      case DioExceptionType.badResponse:
        final statusCode = e.response?.statusCode;
        final message = e.response?.data?.toString() ?? e.message;
        return Exception('Request failed ($statusCode): $message');
      case DioExceptionType.cancel:
        return Exception('Request cancelled');
      default:
        return Exception('Network error: ${e.message}');
    }
  }
}

String cleanDescription(String text) {
  return text.replaceAll('\n', ' ').replaceAll('\f', ' ').trim();
}

class HomePokemonListItem {
  final String name;
  final String? imageUrl;
  final String pokemonUrl;
  HomePokemonListItem({
    required this.name,
    required this.imageUrl,
    required this.pokemonUrl,
  });
}

class PokemonDetail {
  final List<String?> type;
  final List<PokemonStats> stats;
  final String? imageUrl;
  final String description;

  PokemonDetail({
    required this.type,
    required this.stats,
    required this.imageUrl,
    required this.description,
  });
}

class PokemonStats {
  final String statDesc;
  final int statistic;

  PokemonStats({required this.statDesc, required this.statistic});
}
