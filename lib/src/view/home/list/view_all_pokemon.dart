import 'package:flutter/material.dart';
import 'package:pokedex_app/src/model/responses/all_pokemon_response.dart';
import 'package:pokedex_app/src/model/clients/pokemon_api_client.dart';
import 'package:pokedex_app/src/view/home/details/view_pokemon_detail.dart';

enum PokemonFilters {
  all('All Pokéman'),
  favourites('Favourites');

  const PokemonFilters(this.filterName);
  final String filterName;
}

class PokemonListPage extends StatefulWidget {
  const PokemonListPage({super.key});

  @override
  State<PokemonListPage> createState() => _PokemonListPageState();
}

class _PokemonListPageState extends State<PokemonListPage> {
  late TextEditingController controllerSearch;
  final api = PokemonService();
  late Future<List<HomePokemonListItem>> _pokemonList;
  String? imageUrl;
  String? selectedFilter;
  @override
  void initState() {
    super.initState();
    controllerSearch = TextEditingController();
    //getUrl();
    _pokemonList = api.fetchPokemons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F6F6),
      appBar: AppBar(
        centerTitle: false,
        actions: [ColorModeSwitch()],
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Pokédex',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 32),
            ),
            const Text('Welcome Kerusha', style: TextStyle(fontSize: 16)),
          ],
        ),
        backgroundColor: const Color(0xFFF8F6F6),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SearchBar(searchbox: controllerSearch),
            SizedBox(
              height: 60,
              child: Center(
                child: Wrap(
                  spacing: 8, // space between chips
                  alignment: WrapAlignment.center, // center horizontally
                  children:
                      PokemonFilters.values.map((filterName) {
                        final isSelected =
                            selectedFilter == filterName.filterName;

                        return ChoiceChip(
                          showCheckmark: false,
                          label: Text(filterName.filterName),
                          selected: isSelected,
                          onSelected: (bool selected) {
                            setState(() {
                              selectedFilter =
                                  selected ? filterName.filterName : null;
                            });
                          },
                          backgroundColor: Colors.white,
                          selectedColor: const Color(0xFFCDD5E0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        );
                      }).toList(),
                ),
              ),
            ),
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
                                result.imageUrl != null
                                    ? Image.network(
                                      result.imageUrl!,
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.contain,
                                      errorBuilder:
                                          (_, __, ___) =>
                                              const Icon(Icons.broken_image),
                                    )
                                    : const SizedBox(width: 100, height: 100),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                  builder:
                                      (context) => ViewPokemonDetail(
                                        name: result.name,
                                        selectedPokemonUrl: result.pokemonUrl,
                                      ),
                                ),
                              );
                            },
                            title: Text(
                              result.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      // body: ListTile(
      //   leading:
      //       imageUrl != null
      //           ? Image.network(
      //             imageUrl!,
      //             // width: 100,
      //             // height: 100,
      //             fit: BoxFit.contain,
      //             errorBuilder: (_, __, ___) => const Icon(Icons.broken_image),
      //           )
      //           : const SizedBox(width: 100, height: 100),
      // ),
    );
  }
}

class ColorModeSwitch extends StatefulWidget {
  const ColorModeSwitch({super.key});

  @override
  ColorModeSwitchState createState() => ColorModeSwitchState();
}

class ColorModeSwitchState extends State<ColorModeSwitch> {
  bool _isSwitched = false; // Initial value

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Row(
        children: [
          const Icon(Icons.light_mode, color: Colors.amber),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Switch(
              value: _isSwitched, // The current value
              onChanged: (newValue) {
                // Callback when the switch is toggled
                setState(() {
                  _isSwitched = newValue; // Update the state
                });
              },
              activeTrackColor: Color(0xFFCDD5E0),
              inactiveTrackColor: Color(
                0xFF4A5567,
              ), // Color when the switch is ON
            ),
          ),
          const Icon(Icons.dark_mode),
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({required this.searchbox, super.key});

  final TextEditingController searchbox;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: null,
      minLines: 1,
      maxLines: null,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your info';
        }
        return null;
      },

      controller: searchbox,
      cursorColor: Color(0xFF4A5567),

      decoration: InputDecoration(
        suffixIcon: Icon(Icons.search_rounded),
        suffixIconColor: Color(0xFF4A5567),

        filled: true,
        fillColor: Colors.white,
        hintText: 'Search by Pokéman name',
        hintStyle: TextStyle(color: Color(0xFF4A5567)),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: Color(0xFF4A5567)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: Color(0xFF4A5567)),
        ),
      ),
      onChanged: null,
    );
  }
}
