import 'package:flutter/material.dart';
import 'package:two_go_flutter_challenge/ui/themes/app_colors_theme.dart';

class CategoryItemWidget extends StatelessWidget {
  final String imagePath;

  const CategoryItemWidget({required this.imagePath, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: AppColorsTheme.primaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(1, 1),
            blurRadius: 5,
            spreadRadius: 2,
          )
        ],
        borderRadius: BorderRadius.all(Radius.circular(64)),
      ),
      child: Image.asset(imagePath),
    );
  }
}
