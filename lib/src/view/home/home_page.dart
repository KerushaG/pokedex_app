import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_app/src/model/clients/pokemon_api_client.dart';
import 'package:pokedex_app/src/view/home/filters/filter_buttons.dart';
import 'package:pokedex_app/src/view/home/filters/search_bar.dart';
import 'package:pokedex_app/src/view/home/widgets/logout_button.dart';
import 'package:pokedex_app/src/view/home/widgets/page_header.dart';
import 'package:pokedex_app/src/view/home/widgets/pokemon_card.dart';
import 'package:pokedex_app/src/view_model/bloc/authentication/auth_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final api = PokemonService();
  late Future<List<HomePokemonListItem>> _pokemonList;
  String? imageUrl;
  String? selectedFilter;

  @override
  void initState() {
    super.initState();

    _pokemonList = api.fetchPokemons();
  }

  @override
  Widget build(BuildContext context) {
    final username =
        context.read<AuthBloc>().state.authenticatedUser?.name ?? 'Unknown';
    return Scaffold(
      backgroundColor: const Color(0xFFF8F6F6),
      appBar: PageHeader(username: username),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SearchInputField(),
            FilterButtons(),
            const SizedBox(height: 9),
            Expanded(
              child: FutureBuilder<List<HomePokemonListItem>>(
                future: _pokemonList,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (snapshot.hasError) {
                    return Center(child: Text(snapshot.error.toString()));
                  }

                  final pokemons = snapshot.data!;

                  return ListView.builder(
                    itemCount: pokemons.length,
                    itemBuilder: (context, index) {
                      final result = pokemons[index];
                      return PokemonCard(
                        pokemonName: result.name,
                        pokemonUrl: result.pokemonUrl,
                        imageUrl: result.imageUrl,
                      );
                    },
                  );
                },
              ),
            ),
            LogoutButton(),
          ],
        ),
      ),
    );
  }
}
