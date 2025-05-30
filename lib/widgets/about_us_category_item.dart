import 'package:flutter/material.dart';
import 'package:welcome_to_mars/resources/app_colors.dart';
import 'package:welcome_to_mars/resources/app_fonts.dart';

class AboutUsCategoryItem extends StatelessWidget {
  final String categoryTitle;
  final List<String> fields;
  const AboutUsCategoryItem({
    super.key,
    required this.categoryTitle,
    required this.fields,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 15.0,
          ),
          child: Text(
            categoryTitle,
            style: AppFonts.montserratBold.copyWith(
              fontSize: 18.0,
              height: 1.5,
            ),
          ),
        ),
        const SizedBox(
          height: 26.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            fields.length,
            (index) {
              // final item = items[index];
              return Column(
                children: [
                  Text(
                    fields[index],
                    style: AppFonts.montserratRegular.copyWith(
                      fontSize: 16.0,
                      color: AppColors.slateGray,
                    ),
                  ),
                  if (index != fields.length - 1)
                    const SizedBox(
                      height: 17.0,
                    ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
