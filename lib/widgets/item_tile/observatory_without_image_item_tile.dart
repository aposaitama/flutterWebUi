import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:welcome_to_mars/resources/app_colors.dart';
import 'package:welcome_to_mars/resources/app_fonts.dart';
import 'package:welcome_to_mars/widgets/buttons/custom_medium_purple_button.dart';

class ObservatoryWithoutImageItemTile extends StatelessWidget {
  final String tileTitle;
  final String tileDescription;
  final String tileDate;
  final String tilePricePerQuest;
  const ObservatoryWithoutImageItemTile({
    super.key,
    required this.tileTitle,
    required this.tileDescription,
    required this.tileDate,
    required this.tilePricePerQuest,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    return Container(
      width: 712.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16.0,
        ),
        color: Colors.black,
        border: Border.all(
          width: 1.0,
          color: AppColors.yellowColor.withValues(
            alpha: 0.1,
          ),
        ),
      ),
      padding: const EdgeInsets.all(
        25.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          responsive.isMobile || responsive.isTablet
              ? Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tileTitle,
                            style: AppFonts.cinzelBold,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Date',
                                    style: AppFonts.montserratRegular.copyWith(
                                      fontSize: 14.0,
                                      height: 1.5,
                                      color: AppColors.slateGray,
                                    ),
                                  ),
                                  Text(
                                    tileDate,
                                    style: AppFonts.montserratRegular.copyWith(
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 18.0,
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      tileTitle,
                      style: AppFonts.cinzelBold,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Date',
                          style: AppFonts.montserratRegular.copyWith(
                            fontSize: 14.0,
                            height: 1.5,
                            color: AppColors.slateGray,
                          ),
                        ),
                        Text(
                          tileDate,
                          style: AppFonts.montserratRegular.copyWith(
                            fontSize: 16.0,
                          ),
                        )
                      ],
                    )
                  ],
                ),
          const SizedBox(
            height: 28.0,
          ),
          Text(
            tileDescription,
            style: AppFonts.montserratRegular.copyWith(
              fontSize: 16.0,
              color: AppColors.lightGray,
              height: 1.5,
            ),
          ),
          responsive.isMobile || responsive.isTablet
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 18.0,
                    ),
                    Text(
                      tilePricePerQuest,
                      style: AppFonts.montserratBold.copyWith(
                        color: AppColors.yellowColor,
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    const CustomMediumPurpleButton(
                      buttonTitle: 'Reserve Experience',
                    )
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      tilePricePerQuest,
                      style: AppFonts.montserratBold.copyWith(
                        color: AppColors.yellowColor,
                      ),
                    ),
                    const CustomMediumPurpleButton(
                      buttonTitle: 'Reserve',
                    )
                  ],
                )
        ],
      ),
    );
  }
}
