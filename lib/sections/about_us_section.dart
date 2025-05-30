import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:welcome_to_mars/gen/assets.gen.dart';
import 'package:welcome_to_mars/resources/app_fonts.dart';
import 'package:welcome_to_mars/widgets/about_us_category_item.dart';

class AboutUsSection extends StatelessWidget {
  const AboutUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);

    return Container(
      color: Colors.black,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Center(
        child: SizedBox(
          width: 1476.0,
          child: Column(
            children: [
              const SizedBox(
                height: 64.0,
              ),
              responsive.isMobile || responsive.isTablet
                  ? Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              Assets.icons.noireLogo,
                            ),
                            const SizedBox(
                              height: 26.0,
                            ),
                            Text(
                              'A hyper-luxury digital experience designed for visionaries, dreamers, and the elite few who dare to explore beyond Earth.',
                              style: AppFonts.montserratRegular.copyWith(
                                fontSize: 16.0,
                              ),
                            ),
                            const SizedBox(
                              height: 26.0,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF1F2937),
                                  ),
                                  child: Center(
                                    child: SvgPicture.asset(
                                      Assets.icons.instagram,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 16.0,
                                ),
                                Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF1F2937),
                                  ),
                                  child: Center(
                                    child: SvgPicture.asset(
                                      Assets.icons.x,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 16.0,
                                ),
                                Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF1F2937),
                                  ),
                                  child: Center(
                                    child: SvgPicture.asset(
                                      Assets.icons.linkedin,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 33.0,
                        ),
                        const Wrap(
                          spacing: 33,
                          runSpacing: 33,
                          children: [
                            AboutUsCategoryItem(
                              categoryTitle: 'Experiences',
                              fields: [
                                'Private Voyages',
                                'Celestial Residences',
                                'Stellar Circle',
                                'Archive of Infinity',
                                'Observatory Events',
                              ],
                            ),
                            AboutUsCategoryItem(
                              categoryTitle: 'Company',
                              fields: [
                                'About Us',
                                'Our Partners',
                                'Careers',
                                'Press',
                                'Contact',
                              ],
                            ),
                            AboutUsCategoryItem(
                              categoryTitle: 'Legal',
                              fields: [
                                'Terms of Service',
                                'Privacy Policy',
                                'Cookie Policy',
                                'Space Travel Waiver',
                                'Licensing',
                              ],
                            ),
                          ],
                        )
                      ],
                    )
                  : Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              right: 20.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  Assets.icons.noireLogo,
                                ),
                                const SizedBox(
                                  height: 26.0,
                                ),
                                Text(
                                  'A hyper-luxury digital experience designed for visionaries, dreamers, and the elite few who dare to explore beyond Earth.',
                                  style: AppFonts.montserratRegular.copyWith(
                                    fontSize: 16.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 26.0,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xFF1F2937),
                                      ),
                                      child: Center(
                                        child: SvgPicture.asset(
                                          Assets.icons.instagram,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 16.0,
                                    ),
                                    Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xFF1F2937),
                                      ),
                                      child: Center(
                                        child: SvgPicture.asset(
                                          Assets.icons.x,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 16.0,
                                    ),
                                    Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xFF1F2937),
                                      ),
                                      child: Center(
                                        child: SvgPicture.asset(
                                          Assets.icons.linkedin,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        const Expanded(
                          child: AboutUsCategoryItem(
                            categoryTitle: 'Experiences',
                            fields: [
                              'Private Voyages',
                              'Celestial Residences',
                              'Stellar Circle',
                              'Archive of Infinity',
                              'Observatory Events',
                            ],
                          ),
                        ),
                        const Expanded(
                          child: AboutUsCategoryItem(
                            categoryTitle: 'Company',
                            fields: [
                              'About Us',
                              'Our Partners',
                              'Careers',
                              'Press',
                              'Contact',
                            ],
                          ),
                        ),
                        const Expanded(
                          child: AboutUsCategoryItem(
                            categoryTitle: 'Legal',
                            fields: [
                              'Terms of Service',
                              'Privacy Policy',
                              'Cookie Policy',
                              'Space Travel Waiver',
                              'Licensing',
                            ],
                          ),
                        ),
                      ],
                    ),
              const SizedBox(
                height: 67.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
