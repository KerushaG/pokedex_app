import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_app/src/view/home/details/widgets/base_stats.dart';
import 'package:pokedex_app/src/view/home/details/widgets/cover_image.dart';
import 'package:pokedex_app/src/view/home/details/widgets/description.dart';
import 'package:pokedex_app/src/view/home/details/widgets/pokemon_types.dart';
import 'package:pokedex_app/src/view/home/details/widgets/section_header.dart';
import 'package:pokedex_app/src/view_model/bloc/pokemons/pokemon_bloc.dart';

class ViewPokemonDetail extends StatefulWidget {
  const ViewPokemonDetail({super.key, required this.name});
  final String name;

  @override
  State<ViewPokemonDetail> createState() => _ViewPokemonDetailState();
}

class _ViewPokemonDetailState extends State<ViewPokemonDetail> {
  late TextEditingController controllerSearch;

  String? imageUrl;
  String? selectedFilter;
  @override
  void initState() {
    super.initState();
    controllerSearch = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonBloc, PokemonState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Center(child: CircularProgressIndicator());
        }
        if (state.failure != null) {
          return Center(child: Text(state.failure.toString()));
        }
        if (state.selectedPokemon == null) {
          return const SizedBox.shrink();
        }
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
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  PokemonTypes(types: state.selectedPokemon!.type),
                  const SizedBox(height: 16),
                  state.selectedPokemon!.imageUrl != null
                      ? CoverImage(imageUrl: state.selectedPokemon!.imageUrl!)
                      : const SizedBox(width: 100, height: 100),
                  SectionHeader(title: "Bio"),
                  PokemonDescription(
                    description: state.selectedPokemon!.description.trim(),
                  ),
                  const SizedBox(height: 16),
                  SectionHeader(title: "Base Stats"),
                  BaseStats(pokemonStats: state.selectedPokemon!.stats),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
