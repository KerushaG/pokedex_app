import 'package:flutter/material.dart';
import 'package:pokedex_app/src/view/home/details/view_pokemon_detail.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({
    super.key,
    this.imageUrl,
    required this.pokemonName,
    required this.pokemonUrl,
  });

  final String? imageUrl;
  final String pokemonName;
  final String pokemonUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          tileColor: Color(0xFFF9FAFC),
          trailing: const Icon(
            Icons.favorite,
            color: Color(0xFFCDD5E0),
            size: 36,
          ),
          leading:
              imageUrl != null
                  ? Image.network(
                    imageUrl!,
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
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder:
                    (context) => ViewPokemonDetail(
                      name: pokemonName,
                      selectedPokemonUrl: pokemonUrl,
                    ),
              ),
            );
          },
          title: Text(
            pokemonName,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
