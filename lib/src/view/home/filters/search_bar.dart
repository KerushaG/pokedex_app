import 'package:flutter/material.dart';
import 'package:pokedex_app/src/view/shared/input_field.dart';

class SearchInputField extends StatefulWidget {
  const SearchInputField({super.key});

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
        // context.read<AuthBloc>().add(
        //   AuthEvent.onPasswordChanged(password: controllerPassword.text),
        // );
      },
    );
  }
}
