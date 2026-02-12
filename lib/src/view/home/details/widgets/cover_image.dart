import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CoverImage extends StatelessWidget {
  const CoverImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.network(
      imageUrl,
      width: 200,
      height: 200,
      fit: BoxFit.contain,
      placeholderBuilder:
          (_) => const SizedBox(
            width: 200,
            height: 200,
            child: Center(child: CircularProgressIndicator(strokeWidth: 2)),
          ),
    );
  }
}
