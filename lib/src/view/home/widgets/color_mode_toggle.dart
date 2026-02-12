import 'package:flutter/material.dart';

class ColorModeToggle extends StatefulWidget {
  const ColorModeToggle({super.key});

  @override
  ColorModeSwitchState createState() => ColorModeSwitchState();
}

class ColorModeSwitchState extends State<ColorModeToggle> {
  bool _isSwitched = false;

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
              value: _isSwitched,
              onChanged: (newValue) {
                setState(() {
                  _isSwitched = newValue;
                });
              },
              activeTrackColor: Color(0xFFCDD5E0),
              inactiveTrackColor: Color(0xFF4A5567),
            ),
          ),
          const Icon(Icons.dark_mode),
        ],
      ),
    );
  }
}
