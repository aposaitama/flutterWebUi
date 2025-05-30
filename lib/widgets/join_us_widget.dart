import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:welcome_to_mars/resources/app_colors.dart';
import 'package:welcome_to_mars/resources/app_fonts.dart';
import 'package:welcome_to_mars/widgets/buttons/custom_large_purple_button.dart';

class JoinUsWidget extends StatelessWidget {
  const JoinUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    return Container(
      width: 1476.0,
      padding: const EdgeInsets.all(
        32.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16.0,
        ),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.blueViolet.withValues(
              alpha: 0.8,
            ),
            Colors.black
          ],
        ),
      ),
      child: responsive.isTablet || responsive.isMobile
          ? Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Join Our Cosmic Community',
                      style: AppFonts.cinzelBold,
                    ),
                    const SizedBox(
                      height: 18.0,
                    ),
                    Text(
                      'Subscribe to receive exclusive articles, event invitations, and celestial updates directly to your inbox.',
                      style: AppFonts.montserratRegular.copyWith(
                        fontSize: 16.0,
                        color: AppColors.lightGray,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            style: AppFonts.montserratRegular.copyWith(
                              color: AppColors.slateGray,
                              fontSize: 16.0,
                            ),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 17.0,
                                vertical: 16.0,
                              ),
                              hintStyle: AppFonts.montserratRegular.copyWith(
                                color: AppColors.slateGray,
                                fontSize: 16.0,
                              ),
                              hintText: 'Your email address',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: AppColors.yellowColor.withValues(
                                    alpha: 0.3,
                                  ),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: AppColors.yellowColor.withValues(
                                    alpha: 0.3,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    const Center(
                      child: CustomLargePurpleButton(
                        buttonTitle: 'Subscribe',
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      'By subscribing, you agree to our privacy policy and terms of service.',
                      style: AppFonts.montserratRegular.copyWith(
                        fontSize: 14.0,
                        color: AppColors.slateGray,
                        height: 1.5,
                      ),
                    )
                  ],
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
                        'Join Our Cosmic Community',
                        style: AppFonts.cinzelBold,
                      ),
                      const SizedBox(
                        height: 18.0,
                      ),
                      Text(
                        'Subscribe to receive exclusive articles, event invitations, and celestial updates directly to your inbox.',
                        style: AppFonts.montserratRegular.copyWith(
                          fontSize: 16.0,
                          color: AppColors.lightGray,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              style: AppFonts.montserratRegular.copyWith(
                                color: AppColors.slateGray,
                                fontSize: 16.0,
                              ),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 17.0,
                                  vertical: 16.0,
                                ),
                                hintStyle: AppFonts.montserratRegular.copyWith(
                                  color: AppColors.slateGray,
                                  fontSize: 16.0,
                                ),
                                hintText: 'Your email address',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(
                                    width: 1.0,
                                    color: AppColors.yellowColor.withValues(
                                      alpha: 0.3,
                                    ),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(
                                    width: 1.0,
                                    color: AppColors.yellowColor.withValues(
                                      alpha: 0.3,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16.0,
                          ),
                          const CustomLargePurpleButton(
                            buttonTitle: 'Subscribe',
                          )
                        ],
                      ),
                      Text(
                        'By subscribing, you agree to our privacy policy and terms of service.',
                        style: AppFonts.montserratRegular.copyWith(
                          fontSize: 14.0,
                          color: AppColors.slateGray,
                          height: 1.5,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
