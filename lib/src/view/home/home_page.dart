import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_app/src/view/home/filters/filter_buttons.dart';
import 'package:pokedex_app/src/view/home/filters/search_bar.dart';
import 'package:pokedex_app/src/view/home/widgets/logout_button.dart';
import 'package:pokedex_app/src/view/home/widgets/page_header.dart';
import 'package:pokedex_app/src/view/home/widgets/pokemon_card.dart';
import 'package:pokedex_app/src/view_model/bloc/authentication/auth_bloc.dart';
import 'package:pokedex_app/src/view_model/bloc/pokemons/pokemon_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? imageUrl;
  String? selectedFilter;

  @override
  void initState() {
    super.initState();
    context.read<PokemonBloc>().add(const PokemonEvent.getAllPokemon());
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
              child: BlocBuilder<PokemonBloc, PokemonState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return Center(child: CircularProgressIndicator());
                  }
                  if (state.failure != null) {
                    return Center(child: Text(state.failure.toString()));
                  }
                  if (state.pokemonList == null) {
                    return const SizedBox.shrink();
                  }

                  return ListView.builder(
                    itemCount: state.pokemonList!.length,
                    itemBuilder: (context, index) {
                      final result = state.pokemonList![index];
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
