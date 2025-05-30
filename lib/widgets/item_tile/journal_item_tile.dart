import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:welcome_to_mars/resources/app_colors.dart';
import 'package:welcome_to_mars/resources/app_fonts.dart';

class JournalItemTile extends StatelessWidget {
  final String tileCategoryTitle;
  final int tileTimeToRead;
  final String tileTitle;
  final String tileDescription;

  final String tileImage;
  final String tileReporterImage;
  final String tileReporterName;
  final String tileReporterJobPosition;
  const JournalItemTile({
    super.key,
    required this.tileTitle,
    required this.tileDescription,
    required this.tileImage,
    required this.tileCategoryTitle,
    required this.tileTimeToRead,
    required this.tileReporterImage,
    required this.tileReporterName,
    required this.tileReporterJobPosition,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    return Container(
      height: 558.0,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        tileCategoryTitle,
                        style: AppFonts.montserratRegular.copyWith(
                          color: AppColors.slateGray,
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        '$tileTimeToRead min to read',
                        style: AppFonts.montserratRegular.copyWith(
                          color: AppColors.slateGray,
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    tileTitle,
                    style: AppFonts.cinzelBold.copyWith(
                      height: 1.5,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      tileDescription,
                      style: AppFonts.montserratRegular.copyWith(
                        fontSize: 16.0,
                        color: AppColors.lightGray,
                        height: 1.5,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      responsive.isMobile
                          ? const SizedBox.shrink()
                          : CircleAvatar(
                              radius: 24.0,
                              backgroundImage: AssetImage(
                                tileReporterImage,
                              ),
                            ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            tileReporterName,
                            style: AppFonts.montserratMedium.copyWith(
                              fontSize: 16.0,
                              height: 1.5,
                            ),
                          ),
                          Text(
                            tileReporterJobPosition,
                            style: AppFonts.montserratRegular.copyWith(
                              fontSize: 14.0,
                              color: AppColors.slateGray,
                              height: 1.5,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
