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

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final ScrollController _scrollController = ScrollController();

  final GlobalKey _celestialKey = GlobalKey();
  final GlobalKey _stellarCircleKey = GlobalKey();
  final GlobalKey _archiveKey = GlobalKey();
  final GlobalKey _observatoryKey = GlobalKey();

  void _handleNavItemTap(String section) {
    switch (section) {
      case 'Celestial Residences':
        _scrollToSection(_celestialKey);
        break;
      case 'Stellar Circle':
        _scrollToSection(_stellarCircleKey);
        break;
      case 'Archive':
        _scrollToSection(_archiveKey);
        break;
      case 'Observatory':
        _scrollToSection(_observatoryKey);
        break;
    }
  }

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    final scrollContext = _scrollController.position.context.storageContext;

    if (context != null) {
      final box = context.findRenderObject() as RenderBox;
      final scrollBox = scrollContext.findRenderObject() as RenderBox;

      final position = box.localToGlobal(
        Offset.zero,
        ancestor: scrollBox,
      );
      final offset = _scrollController.offset + position.dy;

      _scrollController.animateTo(
        offset,
        duration: const Duration(
          milliseconds: 500,
        ),
        curve: Curves.easeInOut,
      );
    }
  }

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
            const SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NavItem(
                    navItemTitle: 'Celestial Residences',
                    onTap: () {
                      Navigator.pop(context);
                      _scrollToSection(_celestialKey);
                    },
                  ),
                  const SizedBox(height: 35.0),
                  NavItem(
                    navItemTitle: 'Stellar Circle',
                    onTap: () {
                      Navigator.pop(context);
                      _scrollToSection(_stellarCircleKey);
                    },
                  ),
                  const SizedBox(height: 35.0),
                  NavItem(
                    navItemTitle: 'Archive',
                    onTap: () {
                      Navigator.pop(context);
                      _scrollToSection(_archiveKey);
                    },
                  ),
                  const SizedBox(height: 35.0),
                  NavItem(
                    navItemTitle: 'Observatory',
                    onTap: () {
                      Navigator.pop(context);
                      _scrollToSection(_observatoryKey);
                    },
                  ),
                ],
              ),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(bottom: 80.0),
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
        controller: _scrollController,
        child: Column(
          children: [
            IntroPage(
              scaffoldKey: _scaffoldKey,
              onNavItemTap: _handleNavItemTap,
            ),
            VojagesSection(key: _stellarCircleKey),
            CelestialResidences(key: _celestialKey),
            MembershipSection(),
            ArchiveInfinitySection(key: _archiveKey),
            ObservarotySection(key: _observatoryKey),
            GenesisJournalSection(),
            const AboutUsSection(),
          ],
        ),
      ),
    );
  }
}
