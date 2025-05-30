import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:welcome_to_mars/resources/app_colors.dart';
import 'package:welcome_to_mars/resources/app_fonts.dart';
import 'package:welcome_to_mars/widgets/buttons/custom_medium_purple_button.dart';

class VoyagesItemTile extends StatelessWidget {
  final String tileTitle;
  final String tileDescription;
  final String tilePrice;
  final String tileImage;
  const VoyagesItemTile({
    super.key,
    required this.tileTitle,
    required this.tileDescription,
    required this.tilePrice,
    required this.tileImage,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    return Container(
      height: 480.0,
      width: 470.0,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(
          16.0,
        ),
        border: Border.all(
          width: 1.0,
          color: AppColors.yellowColor.withValues(
            alpha: 0.1,
          ),
        ),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(
                16.0,
              ),
              topRight: Radius.circular(
                16.0,
              ),
            ),
            child: Image.asset(
              tileImage,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(
                25.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    tileTitle,
                    style: AppFonts.cinzelBold,
                  ),
                  Text(
                    tileDescription,
                    style: AppFonts.montserratRegular.copyWith(
                      fontSize: 16.0,
                      color: AppColors.lightGray,
                      height: 1.5,
                    ),
                  ),
                  responsive.isMobile
                      ? Center(
                          child: Column(
                            children: [
                              Text(
                                tilePrice,
                                style: AppFonts.montserratBold.copyWith(
                                  color: AppColors.yellowColor,
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              const CustomMediumPurpleButton(
                                buttonTitle: 'Preview Journey',
                              )
                            ],
                          ),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              tilePrice,
                              style: AppFonts.montserratBold.copyWith(
                                color: AppColors.yellowColor,
                              ),
                            ),
                            const CustomMediumPurpleButton(
                              buttonTitle: 'Preview Journey',
                            )
                          ],
                        )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
