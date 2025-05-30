import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:welcome_to_mars/resources/app_colors.dart';
import 'package:welcome_to_mars/resources/app_fonts.dart';
import 'package:welcome_to_mars/widgets/buttons/custom_medium_purple_button.dart';
import 'package:welcome_to_mars/widgets/category_widget.dart';

class CelestialResidencesItemTile extends StatelessWidget {
  final String tileTitle;
  final String tileImage;
  final String tileCategoryTitle;
  final String tilePrice;
  final String tileDescription;
  final String tileButtonTitle;
  final String tileSpecificationTitle;
  final String tileSpecificationValue;
  final String tileSizeValue;
  final String tileAvailabilityValue;
  const CelestialResidencesItemTile({
    super.key,
    required this.tileTitle,
    required this.tileImage,
    required this.tileCategoryTitle,
    required this.tilePrice,
    required this.tileDescription,
    required this.tileButtonTitle,
    required this.tileSpecificationTitle,
    required this.tileSpecificationValue,
    required this.tileSizeValue,
    required this.tileAvailabilityValue,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    return Container(
      height: 544.0,
      width: 712.0,
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
              Positioned(
                left: 24.0,
                bottom: 24.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CategoryWidget(
                      categoryTitle: tileCategoryTitle,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      tileTitle,
                      style: AppFonts.cinzelBold.copyWith(
                        fontSize: responsive.isMobile ? 18.0 : 24.0,
                      ),
                    )
                  ],
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tileSpecificationTitle,
                            style: AppFonts.montserratRegular.copyWith(
                              fontSize: 14.0,
                              color: AppColors.slateGray,
                            ),
                          ),
                          Text(
                            tileSpecificationValue,
                            style: AppFonts.montserratRegular
                                .copyWith(fontSize: 16.0, height: 1.5),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Size',
                            style: AppFonts.montserratRegular.copyWith(
                              fontSize: 14.0,
                              color: AppColors.slateGray,
                            ),
                          ),
                          Text(
                            tileSizeValue,
                            style: AppFonts.montserratRegular
                                .copyWith(fontSize: 16.0, height: 1.5),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Availability',
                            style: AppFonts.montserratRegular.copyWith(
                              fontSize: 14.0,
                              color: AppColors.slateGray,
                            ),
                          ),
                          Text(
                            tileAvailabilityValue,
                            style: AppFonts.montserratRegular.copyWith(
                                fontSize: 16.0,
                                color: AppColors.yellowColor,
                                height: 1.5),
                          ),
                        ],
                      )
                    ],
                  ),
                  Text(
                    tileDescription,
                    style: AppFonts.montserratRegular.copyWith(
                      fontSize: 16.0,
                      height: 1.5,
                      color: AppColors.lightGray,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        tilePrice,
                        style: AppFonts.montserratBold.copyWith(
                          color: AppColors.yellowColor,
                          fontSize: 16.0,
                        ),
                      ),
                      CustomMediumPurpleButton(
                        buttonTitle: tileButtonTitle,
                      ),
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
