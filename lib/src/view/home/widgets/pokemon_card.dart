import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_app/src/view/home/details/view_pokemon_detail.dart';
import 'package:pokedex_app/src/view_model/bloc/pokemons/pokemon_bloc.dart';

class PokemonCard extends StatefulWidget {
  const PokemonCard({
    super.key,
    this.imageUrl,
    required this.pokemonName,
    required this.pokemonUrl,
    required this.isFavorite,
  });

  final String? imageUrl;
  final String pokemonName;
  final String pokemonUrl;
  final bool isFavorite;

  @override
  State<PokemonCard> createState() => _PokemonCardState();
}

class _PokemonCardState extends State<PokemonCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          tileColor: Color(0xFFF9FAFC),
          trailing: BlocSelector<PokemonBloc, PokemonState, bool>(
            selector: (state) {
              return state.favoritePokemons?.contains(widget.pokemonName) ?? false;
            },
            builder: (context, isFavorite) {
              return GestureDetector(
                onTap: () {
                  context.read<PokemonBloc>().add(
                    isFavorite
                        ? PokemonEvent.removeFavoritePokemon(
                          name: widget.pokemonName,
                        )
                        : PokemonEvent.addFavoritePokemon(
                          name: widget.pokemonName,
                        ),
                  );
                },
                child: Icon(
                  Icons.favorite,
                  color: isFavorite ? Colors.red : Color(0xFFCDD5E0),
                  size: 36,
                ),
              );
            },
          ),
          leading:
              widget.imageUrl != null
                  ? Image.network(
                    widget.imageUrl!,
                    width: 100,
                    height: 100,
                    fit: BoxFit.contain,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      }
                      return const SizedBox(
                        width: 100,
                        height: 100,
                        child: Center(
                          child: CircularProgressIndicator(strokeWidth: 2),
                        ),
                      );
                    },
                    errorBuilder:
                        (_, __, ___) => const Icon(Icons.broken_image),
                  )
                  : Container(
                    width: 100,
                    height: 100,
                    color: Colors.amberAccent,
                  ),
          onTap: () {
            context.read<PokemonBloc>().add(
              PokemonEvent.getSelectedPokemon(widget.pokemonUrl),
            );
            final state = context.read<PokemonBloc>().state;
            final item =
                state.pokemonList
                    ?.where((e) => e.name == widget.pokemonName)
                    .firstOrNull;
            final isFavourite = item?.isFavourite ?? widget.isFavorite;
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder:
                    (context) => ViewPokemonDetail(
                      name: widget.pokemonName,
                      isFavourite: isFavourite,
                    ),
              ),
            );
          },
          title: Text(
            widget.pokemonName,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
