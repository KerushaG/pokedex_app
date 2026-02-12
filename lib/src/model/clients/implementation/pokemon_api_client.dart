import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex_app/src/model/clients/dio_client.dart';
import 'package:pokedex_app/src/model/clients/interfaces/i_pokemon_client.dart';
import 'package:pokedex_app/src/model/responses/all_pokemon_response.dart';
import 'package:pokedex_app/src/model/responses/pokemon_detail/pokemon_detail.dart'
    as pokemon_detail_response;

@LazySingleton(as: IPokemonClient)
class PokemonClient implements IPokemonClient {
  final _dio = DioClient.dio;

  @override
  Future<AllPokemon> fetchPokemons({int limit = 20, int offset = 0}) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/pokemon',
        queryParameters: {'limit': limit, 'offset': offset},
      );
      final data = response.data;
      if (data == null) throw Exception('Empty response');
      return AllPokemon.fromJson(data);
    } on DioException catch (e) {
      throw _handleDioException(e);
    }
  }

  @override
  Future<pokemon_detail_response.PokemonDetail> fetchPokemonDetailObject(
    String url,
  ) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(url);
      final data = response.data;
      if (data == null) throw Exception('Empty response');
      return pokemon_detail_response.PokemonDetail.fromJson(data);
    } on DioException catch (e) {
      throw _handleDioException(e);
    }
  }

  @override
  Future<String> getSpeciesFlavorText(String speciesUrl) async {
    try {
      final response =
          await _dio.get<Map<String, dynamic>>(speciesUrl);
      final entries = response.data?['flavor_text_entries'] as List?;
      if (entries == null) return '';
      final en = entries.cast<Map<String, dynamic>>().where(
            (e) => e['language']?['name'] == 'en',
          );
      final first = en.isNotEmpty ? en.first['flavor_text'] as String? : null;
      if (first == null) return '';
      return first.replaceAll('\n', ' ').replaceAll('\f', ' ').trim();
    } on DioException catch (e) {
      throw _handleDioException(e);
    }
  }

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
