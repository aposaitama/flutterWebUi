import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:welcome_to_mars/resources/app_colors.dart';
import 'package:welcome_to_mars/resources/app_fonts.dart';
import 'package:welcome_to_mars/widgets/buttons/custom_medium_purple_button.dart';
import 'package:welcome_to_mars/widgets/category_widget.dart';

class ObservatoryItemTile extends StatelessWidget {
  final String tileImage;
  final String tileTitle;
  final String tileDescription;
  final String tileDate;
  final String tilePricePerQuest;
  const ObservatoryItemTile({
    super.key,
    required this.tileTitle,
    required this.tileDescription,
    required this.tileDate,
    required this.tilePricePerQuest,
    required this.tileImage,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    return Container(
      width: 712.0,
      height: 696.0,
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
      child: Column(
        children: [
          Stack(
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
              const Positioned(
                top: 16,
                right: 16,
                child: CategoryWidget(
                  categoryTitle: 'Featured Event',
                ),
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(
                25.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            'Date',
                                            style: AppFonts.montserratRegular
                                                .copyWith(
                                              fontSize: 14.0,
                                              height: 1.5,
                                              color: AppColors.slateGray,
                                            ),
                                          ),
                                          Text(
                                            tileDate,
                                            style: AppFonts.montserratRegular
                                                .copyWith(
                                              fontSize: 16.0,
                                            ),
                                          )
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
                    height: 18.0,
                  ),
                  Text(
                    tileDescription,
                    style: AppFonts.montserratRegular.copyWith(
                      fontSize: 16.0,
                      color: AppColors.lightGray,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(
                    height: 27.0,
                  ),
                  responsive.isMobile || responsive.isTablet
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
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
                              buttonTitle: 'Reserve Experience',
                            )
                          ],
                        )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
