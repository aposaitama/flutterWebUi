import 'package:flutter/material.dart';
import 'package:welcome_to_mars/resources/app_fonts.dart';

class NavItem extends StatelessWidget {
  final String navItemTitle;
  const NavItem({super.key, required this.navItemTitle});

  @override
  Widget build(BuildContext context) {
    return Text(
      navItemTitle,
      style: AppFonts.montserratMedium.copyWith(
        fontSize: 20.0,
      ),
    );
  }
}
