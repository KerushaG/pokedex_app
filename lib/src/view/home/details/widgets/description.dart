import 'package:flutter/material.dart';

class PokemonDescription extends StatelessWidget {
  const PokemonDescription({super.key, required this.description});
  final String description;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          tileColor: const Color(0xFFFBE4C0),

          title: Text(
            description,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ),
      ),
    );
  }
}
