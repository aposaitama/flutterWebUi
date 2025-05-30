import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:welcome_to_mars/gen/assets.gen.dart';
import 'package:welcome_to_mars/resources/app_colors.dart';
import 'package:welcome_to_mars/resources/app_fonts.dart';
import 'package:welcome_to_mars/widgets/buttons/custom_large_purple_button.dart';

class NamingWidget extends StatelessWidget {
  const NamingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    return Container(
      width: 1476.0,
      padding: const EdgeInsets.symmetric(
        vertical: 64.0,
        horizontal: 32.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16.0,
        ),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF111827), Colors.black],
        ),
      ),
      child: responsive.isMobile || responsive.isTablet
          ? Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Celestial Naming Service',
                      style: AppFonts.cinzelBold.copyWith(
                        fontSize: 30.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 18.0,
                    ),
                    Text(
                      'Leave your mark in the cosmos with our exclusive naming rights program. Name a star, sponsor an asteroid discovery, or dedicate a comet with full astronomical registry recognition.',
                      style: AppFonts.montserratRegular.copyWith(
                        fontSize: 16.0,
                        color: AppColors.lightGray,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 27.0,
                    ),
                    const CustomLargePurpleButton(
                      buttonTitle: 'Explore Naming Options',
                    )
                  ],
                ),
                Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 320.0,
                        height: 320.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.charcoal.withValues(alpha: 0.1),
                        ),
                        child: Center(
                          child: Container(
                            width: 288.0,
                            height: 288.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.indigo.withValues(alpha: 0.15),
                            ),
                            child: Center(
                              child: Container(
                                width: 256.0,
                                height: 256.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.blueViolet
                                      .withValues(alpha: 0.15),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 64.0,
                            height: 64.0,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF533837),
                            ),
                            child: Center(
                              child: SvgPicture.asset(Assets.icons.starIcon),
                            ),
                          ),
                          const SizedBox(
                            height: 22.0,
                          ),
                          Text(
                            'Your Legacy Among Stars',
                            style: AppFonts.cinzelBold.copyWith(
                              fontSize: 20.0,
                            ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Eternally recorded in astronomical databases',
                            style: AppFonts.montserratRegular.copyWith(
                              fontSize: 14.0,
                              color: AppColors.lightGray,
                              height: 1.5,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          : Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Celestial Naming Service',
                        style: AppFonts.cinzelBold.copyWith(
                          fontSize: 30.0,
                        ),
                      ),
                      const SizedBox(
                        height: 18.0,
                      ),
                      Text(
                        'Leave your mark in the cosmos with our exclusive naming rights program. Name a star, sponsor an asteroid discovery, or dedicate a comet with full astronomical registry recognition.',
                        style: AppFonts.montserratRegular.copyWith(
                          fontSize: 16.0,
                          color: AppColors.lightGray,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(
                        height: 27.0,
                      ),
                      const CustomLargePurpleButton(
                        buttonTitle: 'Explore Naming Options',
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 320.0,
                          height: 320.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.charcoal.withValues(alpha: 0.1),
                          ),
                          child: Center(
                            child: Container(
                              width: 288.0,
                              height: 288.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.indigo.withValues(alpha: 0.15),
                              ),
                              child: Center(
                                child: Container(
                                  width: 256.0,
                                  height: 256.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.blueViolet
                                        .withValues(alpha: 0.15),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 64.0,
                              height: 64.0,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF533837),
                              ),
                              child: Center(
                                child: SvgPicture.asset(Assets.icons.starIcon),
                              ),
                            ),
                            const SizedBox(
                              height: 22.0,
                            ),
                            Text(
                              'Your Legacy Among Stars',
                              style: AppFonts.cinzelBold.copyWith(
                                fontSize: 20.0,
                              ),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              'Eternally recorded in astronomical databases',
                              style: AppFonts.montserratRegular.copyWith(
                                fontSize: 14.0,
                                color: AppColors.lightGray,
                                height: 1.5,
                              ),
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
