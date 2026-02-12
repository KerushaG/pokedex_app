import 'package:flutter/material.dart';

class PokemonTypes extends StatelessWidget {
  const PokemonTypes({super.key, required this.types});
  final List<String?> types;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      alignment: WrapAlignment.center,
      children:
          types.map((type) {
            return Chip(
              label: Text(type ?? ''),
              backgroundColor: const Color.fromARGB(255, 242, 109, 32),
              side: BorderSide.none,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            );
          }).toList(),
    );
  }
}
