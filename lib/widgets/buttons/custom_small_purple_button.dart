import 'package:flutter/material.dart';
import 'package:welcome_to_mars/resources/app_colors.dart';
import 'package:welcome_to_mars/resources/app_fonts.dart';

class CustomSmallPurpleButton extends StatelessWidget {
  final String buttonTitle;
  final void Function()? onButtonTap;
  const CustomSmallPurpleButton({
    super.key,
    required this.buttonTitle,
    this.onButtonTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onButtonTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 19.0,
          vertical: 9.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            8.0,
          ),
          border: Border.all(
            width: 1.0,
            color: AppColors.rosewood,
          ),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColors.blueViolet.withValues(
                alpha: 0.8,
              ),
              AppColors.indigo.withValues(
                alpha: 0.8,
              ),
            ],
          ),
        ),
        child: Text(
          buttonTitle,
          style: AppFonts.montserratMedium,
        ),
      ),
    );
  }
}
