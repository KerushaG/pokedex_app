import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:pokedex_app/src/model/clients/pokemon_api_client.dart';

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
    //getUrl();
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
                  Wrap(
                    spacing: 8.0,
                    alignment: WrapAlignment.center,
                    children:
                        pokemons.type.map((type) {
                          return Chip(
                            label: Text(type ?? 'kerusha'),
                            backgroundColor: const Color.fromARGB(
                              255,
                              242,
                              109,
                              32,
                            ),
                            side: BorderSide.none,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          );
                        }).toList(),
                  ),
                  const SizedBox(height: 16),
                  pokemons.imageUrl != null
                      ? SvgPicture.network(
                        pokemons.imageUrl!,
                        width: 200,
                        height: 200,
                        fit: BoxFit.contain,
                        placeholderBuilder:
                            (_) => const SizedBox(
                              width: 24,
                              height: 24,
                              child: CircularProgressIndicator(),
                            ),
                      )
                      : const SizedBox(width: 100, height: 100),

                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      border: Border(
                        left: BorderSide(
                          color: const Color.fromARGB(255, 242, 109, 32),
                          width: 4.0,
                        ),
                      ),
                      //border: Border.all(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Text(
                      "Bio",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        tileColor: const Color(0xFFFBE4C0),

                        title: Text(
                          pokemons.description.trim(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      border: Border(
                        left: BorderSide(
                          color: const Color.fromARGB(255, 242, 109, 32),
                          width: 4.0,
                        ),
                      ),
                      //border: Border.all(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Text(
                      "Base Stats",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          for (final stat in pokemons.stats)
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 6.0,
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 80,
                                    child: Text(
                                      stat.statDesc,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: TitledProgressBar(
                                      maxSteps: 250,
                                      currentStep: stat.statistic,
                                      progressColor: const Color.fromARGB(
                                        255,
                                        242,
                                        109,
                                        32,
                                      ),
                                      backgroundColor: Colors.grey.shade300,
                                      minHeight: 15,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  SizedBox(
                                    width: 32,
                                    child: Text(
                                      stat.statistic.toString(),
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            );
          },
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
