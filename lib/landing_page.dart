import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:welcome_to_mars/gen/assets.gen.dart';
import 'package:welcome_to_mars/resources/app_colors.dart';
import 'package:welcome_to_mars/sections/about_us_section.dart';
import 'package:welcome_to_mars/sections/archive_infinity_section.dart';
import 'package:welcome_to_mars/sections/celestial_residences.dart';
import 'package:welcome_to_mars/sections/genesis_journal_section.dart';
import 'package:welcome_to_mars/sections/intro_page.dart';
import 'package:welcome_to_mars/sections/membership_section.dart';
import 'package:welcome_to_mars/sections/observaroty_section.dart';
import 'package:welcome_to_mars/sections/vojages_section.dart';
import 'package:welcome_to_mars/widgets/buttons/custom_small_purple_button.dart';
import 'package:welcome_to_mars/widgets/nav_item.dart';

class LandingPage extends StatelessWidget {
  LandingPage({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        backgroundColor: AppColors.charcoal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeader(
              child: SvgPicture.asset(Assets.icons.celestiaLogo),
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NavItem(navItemTitle: 'Celestial Residences'),
                  SizedBox(height: 35.0),
                  NavItem(navItemTitle: 'Stellar Circle'),
                  SizedBox(height: 35.0),
                  NavItem(navItemTitle: 'Archive'),
                  SizedBox(height: 35.0),
                  NavItem(navItemTitle: 'Observatory'),
                ],
              ),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(
                bottom: 80.0,
              ),
              child: Center(
                child: CustomSmallPurpleButton(
                  buttonTitle: "Login",
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            IntroPage(
              scaffoldKey: _scaffoldKey,
            ),
            VojagesSection(),
            CelestialResidences(),
            MembershipSection(),
            ArchiveInfinitySection(),
            ObservarotySection(),
            GenesisJournalSection(),
            const AboutUsSection(),
          ],
        ),
      ),
    );
  }
}
