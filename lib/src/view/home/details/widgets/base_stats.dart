import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:pokedex_app/src/model/clients/pokemon_api_client.dart';

class BaseStats extends StatelessWidget {
  const BaseStats({super.key, required this.pokemonStats});

  final List<PokemonStats> pokemonStats;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            for (final stat in pokemonStats)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
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
                        progressColor: const Color.fromARGB(255, 242, 109, 32),
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
    );
  }
}
