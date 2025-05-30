import 'package:flutter/material.dart';
import 'package:welcome_to_mars/resources/app_fonts.dart';

class NavItem extends StatelessWidget {
  final String navItemTitle;
  final void Function()? onTap;
  const NavItem({
    super.key,
    required this.navItemTitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        navItemTitle,
        style: AppFonts.montserratMedium.copyWith(
          fontSize: 20.0,
        ),
      ),
    );
  }
}
