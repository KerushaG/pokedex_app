import 'package:flutter/material.dart';
import 'package:pokedex_app/src/model/clients/pokemon_api_client.dart';
import 'package:pokedex_app/src/view/home/details/widgets/base_stats.dart';
import 'package:pokedex_app/src/view/home/details/widgets/cover_image.dart';
import 'package:pokedex_app/src/view/home/details/widgets/description.dart';
import 'package:pokedex_app/src/view/home/details/widgets/pokemon_types.dart';
import 'package:pokedex_app/src/view/home/details/widgets/section_header.dart';

class ViewPokemonDetail extends StatefulWidget {
  const ViewPokemonDetail({
    super.key,
    required this.name,
    required this.selectedPokemonUrl,
  });
  final String name;
  final String selectedPokemonUrl;
  @override
  State<ViewPokemonDetail> createState() => _ViewPokemonDetailState();
}

class _ViewPokemonDetailState extends State<ViewPokemonDetail> {
  late TextEditingController controllerSearch;
  final api = PokemonService();
  late Future<PokemonDetail> _pokemonDetails;
  String? imageUrl;
  String? selectedFilter;
  @override
  void initState() {
    super.initState();
    controllerSearch = TextEditingController();
    _pokemonDetails = api.fetchPokemonDetailObject(widget.selectedPokemonUrl);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F6F6),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: const Icon(
              Icons.favorite,
              color: Color(0xFFCDD5E0),
              size: 36,
            ),
          ),
        ],
        title: Text(
          widget.name,
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
        ),
        backgroundColor: const Color(0xFFF8F6F6),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: FutureBuilder<PokemonDetail>(
          future: _pokemonDetails,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            if (snapshot.hasError) {
              return Center(child: Text(snapshot.error.toString()));
            }

            final pokemons = snapshot.data!;

            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  PokemonTypes(types: pokemons.type),
                  const SizedBox(height: 16),
                  pokemons.imageUrl != null
                      ? CoverImage(imageUrl: pokemons.imageUrl!)
                      : const SizedBox(width: 100, height: 100),
                  SectionHeader(title: "Bio"),
                  PokemonDescription(description: pokemons.description.trim()),
                  const SizedBox(height: 16),
                  SectionHeader(title: "Base Stats"),
                  BaseStats(pokemonStats: pokemons.stats),
                  const SizedBox(height: 24),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
