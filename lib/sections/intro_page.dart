import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:welcome_to_mars/gen/assets.gen.dart';
import 'package:welcome_to_mars/resources/app_colors.dart';
import 'package:welcome_to_mars/resources/app_fonts.dart';
import 'package:welcome_to_mars/widgets/buttons/custom_large_black_button.dart';
import 'package:welcome_to_mars/widgets/buttons/custom_large_purple_button.dart';
import 'package:welcome_to_mars/widgets/buttons/custom_small_purple_button.dart';
import 'package:welcome_to_mars/widgets/nav_item.dart';

class IntroPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final Function(String section) onNavItemTap;
  const IntroPage({
    super.key,
    required this.scaffoldKey,
    required this.onNavItemTap,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            Assets.images.background.path,
            fit: BoxFit.cover,
          ),
          responsive.isTablet || responsive.isMobile
              ? Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 32.0,
                      left: 20.0,
                      right: 20.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          Assets.icons.celestiaLogo,
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            scaffoldKey.currentState?.openDrawer();
                          },
                        ),
                      ],
                    ),
                  ),
                )
              : Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 32.0,
                      left: 62.0,
                      right: 34.0,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                Assets.icons.celestiaLogo,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Wrap(
                                  spacing: 35,
                                  runSpacing: 10,
                                  children: [
                                    NavItem(
                                      navItemTitle: 'Celestial Residences',
                                      onTap: () =>
                                          onNavItemTap('Celestial Residences'),
                                    ),
                                    NavItem(
                                      navItemTitle: 'Stellar Circle',
                                      onTap: () =>
                                          onNavItemTap('Stellar Circle'),
                                    ),
                                    NavItem(
                                      navItemTitle: 'Archive',
                                      onTap: () => onNavItemTap('Archive'),
                                    ),
                                    NavItem(
                                      navItemTitle: 'Observatory',
                                      onTap: () => onNavItemTap('Observatory'),
                                    ),
                                  ],
                                ),
                              ),
                              const CustomSmallPurpleButton(
                                buttonTitle: "Login",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
          Align(
              alignment: responsive.isMobile || responsive.isTablet
                  ? Alignment.center
                  : Alignment.centerLeft,
              child: Padding(
                padding: responsive.isMobile || responsive.isTablet
                    ? const EdgeInsets.symmetric(
                        horizontal: 20.0,
                      )
                    : const EdgeInsets.only(
                        left: 100.0,
                      ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Beyond ',
                            style: AppFonts.cinzelBold.copyWith(
                              fontSize: responsive.isMobile ? 40.0 : 72.0,
                            ),
                          ),
                          TextSpan(
                            text: 'Earth',
                            style: AppFonts.cinzelBold.copyWith(
                                fontSize: responsive.isMobile ? 40.0 : 72.0,
                                color: AppColors.blueViolet),
                          ),
                          TextSpan(
                            text: ',\n',
                            style: AppFonts.cinzelBold.copyWith(
                              fontSize: responsive.isMobile ? 40.0 : 72.0,
                            ),
                          ),
                          TextSpan(
                            text: 'Into ',
                            style: AppFonts.cinzelBold.copyWith(
                              fontSize: responsive.isMobile ? 40.0 : 72.0,
                            ),
                          ),
                          TextSpan(
                            text: 'Infinity',
                            style: AppFonts.cinzelBold.copyWith(
                              fontSize: responsive.isMobile ? 40.0 : 72.0,
                              color: AppColors.yellowColor,
                            ),
                          ),
                        ],
                      ),
                      textAlign: responsive.isMobile || responsive.isTablet
                          ? TextAlign.center
                          : TextAlign.start,
                    ),
                    const SizedBox(
                      height: 14.0,
                    ),
                    SizedBox(
                      width: 575.0,
                      child: Text(
                        'A hyper-luxury digital experience designed for visionaries, dreamers, and the elite few who dare to explore the cosmos. Welcome to the future of space exploration.',
                        style: AppFonts.montserratRegular.copyWith(
                          fontSize: responsive.isMobile || responsive.isTablet
                              ? 15.0
                              : 20.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 45.0,
                    ),
                    responsive.isMobile || responsive.isTablet
                        ? const Center(
                            child: Column(
                              children: [
                                CustomLargePurpleButton(
                                  buttonTitle: 'Enter the Experience',
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                CustomLargeBlackButton(
                                  buttonTitle: 'Watch Teaser',
                                )
                              ],
                            ),
                          )
                        : const Row(
                            children: [
                              CustomLargePurpleButton(
                                buttonTitle: 'Enter the Experience',
                              ),
                              SizedBox(
                                width: 24.0,
                              ),
                              CustomLargeBlackButton(
                                buttonTitle: 'Watch Teaser',
                              )
                            ],
                          )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
