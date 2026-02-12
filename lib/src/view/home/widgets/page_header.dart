import 'package:flutter/material.dart';
import 'package:pokedex_app/src/view/home/widgets/color_mode_toggle.dart';

class PageHeader extends StatelessWidget implements PreferredSizeWidget {
  const PageHeader({super.key, required this.username});
  final String username;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 70,
      centerTitle: false,
      actions: [ColorModeToggle()],
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Pokédex',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 32),
          ),
          Text('Welcome $username', style: TextStyle(fontSize: 16)),
        ],
      ),
      backgroundColor: const Color(0xFFF8F6F6),
    );
  }
}
