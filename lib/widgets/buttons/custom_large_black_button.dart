import 'package:flutter/material.dart';
import 'package:welcome_to_mars/resources/app_colors.dart';
import 'package:welcome_to_mars/resources/app_fonts.dart';

class CustomLargeBlackButton extends StatelessWidget {
  final String buttonTitle;
  final void Function()? onButtonTap;
  const CustomLargeBlackButton({
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
          horizontal: 33.0,
          vertical: 20.0,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              8.0,
            ),
            border: Border.all(
              width: 1.0,
              color: AppColors.gunmetal,
            ),
            color: Colors.black),
        child: Text(
          buttonTitle,
          style: AppFonts.montserratRegular.copyWith(
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
