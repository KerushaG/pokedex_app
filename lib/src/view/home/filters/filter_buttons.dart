import 'package:flutter/material.dart';
import 'package:pokedex_app/src/view_model/enums/pokemon_enum.dart';

class FilterButtons extends StatefulWidget {
  const FilterButtons({super.key});

  @override
  State<FilterButtons> createState() => _FilterButtonsState();
}

class _FilterButtonsState extends State<FilterButtons> {
  String? selectedFilter;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Center(
        child: Wrap(
          spacing: 8,
          alignment: WrapAlignment.center,
          children:
              PokemonFilters.values.map((filterName) {
                final isSelected = selectedFilter == filterName.filterName;

                return ChoiceChip(
                  showCheckmark: false,
                  label: Text(filterName.filterName),
                  selected: isSelected,
                  onSelected: (bool selected) {
                    setState(() {
                      selectedFilter = selected ? filterName.filterName : null;
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
    );
  }
}
