import 'package:flutter/material.dart';
import 'package:pokedex_app/src/view/shared/input_field.dart';

class PokemonSearchDelegate extends SearchDelegate<String> {
  PokemonSearchDelegate({required this.searchables});

  final List<String> searchables;
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, '');
      },
      icon: Icon(Icons.arrow_back, size: 22),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return SuggestionOrResultWidget(searchables: searchables, query: query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return SuggestionOrResultWidget(searchables: searchables, query: query);
  }
}

class SuggestionOrResultWidget extends StatelessWidget {
  const SuggestionOrResultWidget({
    super.key,
    required this.searchables,
    required this.query,
  });

  final List<String> searchables;
  final String query;

  @override
  Widget build(BuildContext context) {
    final List<String> suggestions =
        query.isEmpty
            ? searchables
            : searchables
                .where(
                  (element) =>
                      element.toLowerCase().contains(query.toLowerCase()),
                )
                .toList();

    if (suggestions.isEmpty) return const NoResultWidget();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              tileColor: const Color(0xFFFBE4C0),

              title: Text(
                suggestions[index],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class NoResultWidget extends StatelessWidget {
  const NoResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: ListTile(
            tileColor: Color(0xFFFBE4C0),
            title: Text(
              'No Result Found',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ),
        ),
      ),
    );
  }
}

class SearchInputField extends StatefulWidget {
  const SearchInputField({super.key, required this.pokemonNames});

  final List<String>? pokemonNames;

  @override
  State<SearchInputField> createState() => _SearchInputFieldState();
}

class _SearchInputFieldState extends State<SearchInputField> {
  late TextEditingController controllerSearch;
  @override
  void initState() {
    super.initState();
    controllerSearch = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return InputField(
      icon: Icon(Icons.search_rounded),
      controller: controllerSearch,
      userPrompt: 'Search by Pokémon name',
      onType: (value) {
        showSearch(
          context: context,
          delegate: PokemonSearchDelegate(
            searchables: widget.pokemonNames ?? [],
          ),
        );
      },
    );
  }
}
