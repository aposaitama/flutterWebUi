import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:welcome_to_mars/gen/assets.gen.dart';
import 'package:welcome_to_mars/resources/app_colors.dart';
import 'package:welcome_to_mars/resources/app_fonts.dart';
import 'package:welcome_to_mars/widgets/buttons/custom_wide_purple_button.dart';

class MembersipItemTile extends StatelessWidget {
  final String tileTitle;
  final String tileDescription;
  final String tilePrice;
  final String tileCategory;
  final int tileLimit;
  final List<String> membershipBenefits;

  const MembersipItemTile({
    super.key,
    required this.tileTitle,
    required this.tileDescription,
    required this.tilePrice,
    required this.tileCategory,
    required this.tileLimit,
    required this.membershipBenefits,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    return Container(
      height: 640.0,
      width: 470.0,
      padding: const EdgeInsets.all(
        33.0,
      ),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 4.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                30.0,
              ),
              color: AppColors.charcoal,
            ),
            child: Text(
              tileCategory,
              style: AppFonts.montserratRegular.copyWith(
                fontSize: 14.0,
                height: 1.5,
              ),
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            tileTitle,
            style: AppFonts.cinzelBold.copyWith(
              height: 1.5,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Container(
            height: 4.0,
            width: 96.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                30.0,
              ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.blueViolet.withValues(
                    alpha: 0.8,
                  ),
                  AppColors.indigo.withValues(
                    alpha: 0.8,
                  ),
                ],
              ),
            ),
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
            height: 16.0,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: membershipBenefits.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(Assets.icons.checkMark),
                      const SizedBox(width: 16.0),
                      Expanded(
                        child: Text(
                          membershipBenefits[index],
                          style: AppFonts.montserratRegular.copyWith(
                            color: AppColors.lightGray,
                            fontSize: 16.0,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          responsive.isMobile
              ? Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Annual Fee',
                            style: AppFonts.montserratRegular.copyWith(
                              color: AppColors.slateGray,
                              fontSize: 14.0,
                              height: 1.5,
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            tilePrice,
                            style: AppFonts.montserratBold.copyWith(
                              color: AppColors.yellowColor,
                              fontSize: 24.0,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Limited to $tileLimit members',
                        style: AppFonts.montserratRegular.copyWith(
                            color: AppColors.slateGray,
                            fontSize: 14.0,
                            height: 1.5),
                      ),
                    ],
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Annual Fee',
                          style: AppFonts.montserratRegular.copyWith(
                            color: AppColors.slateGray,
                            fontSize: 14.0,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          tilePrice,
                          style: AppFonts.montserratBold.copyWith(
                            color: AppColors.yellowColor,
                            fontSize: 24.0,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Limited to $tileLimit members',
                      style: AppFonts.montserratRegular.copyWith(
                          color: AppColors.slateGray,
                          fontSize: 14.0,
                          height: 1.5),
                    ),
                  ],
                ),
          const SizedBox(
            height: 24.0,
          ),
          const CustomWidePurpleButton(
            buttonTitle: 'Apply for Membership',
          )
        ],
      ),
    );
  }
}
