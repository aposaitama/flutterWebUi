import 'package:flutter/material.dart';
import 'package:welcome_to_mars/resources/app_colors.dart';
import 'package:welcome_to_mars/resources/app_fonts.dart';

class SectionDescriptionTile extends StatelessWidget {
  final String sectionTitle;
  final String sectionDescription;
  const SectionDescriptionTile(
      {super.key,
      required this.sectionTitle,
      required this.sectionDescription});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            sectionTitle,
            style: AppFonts.cinzelBold.copyWith(
              fontSize: 48.0,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 30.0,
        ),
        SizedBox(
          width: 768,
          child: Text(
            sectionDescription,
            style: AppFonts.montserratRegular.copyWith(
              fontSize: 20.0,
              color: AppColors.slateGray,
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
