import 'package:flutter/material.dart';
import 'package:welcome_to_mars/resources/app_colors.dart';
import 'package:welcome_to_mars/resources/app_fonts.dart';

class CategoryWidget extends StatelessWidget {
  final String categoryTitle;
  const CategoryWidget({super.key, required this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 4.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          30.0,
        ),
        color: AppColors.indigo.withValues(
          alpha: 0.8,
        ),
      ),
      child: Text(
        categoryTitle,
        style: AppFonts.montserratRegular.copyWith(
          fontSize: 14.0,
          height: 1.5,
        ),
      ),
    );
  }
}
