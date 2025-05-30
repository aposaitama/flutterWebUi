// sections/header_section.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:welcome_to_mars/gen/assets.gen.dart';
import 'package:welcome_to_mars/widgets/buttons/custom_large_black_button.dart';
import 'package:welcome_to_mars/widgets/buttons/custom_large_purple_button.dart';
import 'package:welcome_to_mars/widgets/buttons/custom_medium_purple_button.dart';
import 'package:welcome_to_mars/widgets/buttons/custom_small_purple_button.dart';
import 'package:welcome_to_mars/widgets/buttons/custom_wide_purple_button.dart';
import 'package:welcome_to_mars/widgets/item_tile/voyages_item_tile.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
      color: Colors.blueGrey[900],
      width: double.infinity,
      child: Column(
        children: [
          // JoinUsWidget(),
          // SizedBox(
          //   height: 10.0,
          // ),
          // const MembersipItemTile(
          //   tileTitle: 'Cosmic Explorer',
          //   tileDescription:
          //       'Begin your journey beyond Earth with priority access to suborbital flights and exclusive events.',
          //   tilePrice: '\$250.000',
          //   tileCategory: 'Platinum',
          //   tileLimit: 500,
          //   membershipBenefits: [
          //     "Priority booking for suborbital experiences",
          //     "Invitation to annual Stellar Gala events",
          //     "Digital celestial passport with journey tracking",
          //     "Access to member-only Observatory events",
          //     "Concierge service for all bookings",
          //   ],
          // ),
          // ObservatoryItemTile(
          //   tileImage: Assets.images.lunarEclipse.path,
          //   tileDate: 'May 22-25, 2025',
          //   tileDescription:
          //       'Witness the aurora borealis from our private Arctic lodge during a predicted major solar storm event.',
          //   tilePricePerQuest: '\$45,000 per guest',
          //   tileTitle: 'Solar Storm Watch',
          // ),
          // const SizedBox(
          //   height: 10.0,
          // ),
          // const ObservatoryWithoutImageItemTile(
          //   tileDate: 'May 22-25, 2025',
          //   tileDescription:
          //       'Witness the aurora borealis from our private Arctic lodge during a predicted major solar storm event.',
          //   tilePricePerQuest: '\$45,000 per guest',
          //   tileTitle: 'Solar Storm Watch',
          // ),
          // const SizedBox(
          //   height: 10.0,
          // ),
          // ArchiveShopItemTile(
          //   tileTitle: 'Orbital Chronograph',
          //   tileDescription:
          //       'Space-flown mechanical timepiece with Gibeon meteorite dial, platinum case, and sapphire crystal displaying 14 orbits around Earth.',
          //   tilePrice: '\$225,000',
          //   tileImage: Assets.images.orbitalChronograph.path,
          // ),
          // const SizedBox(
          //   height: 10.0,
          // ),
          // JournalItemTile(
          //   tileTitle: 'The Overview Effect: Transforming Consciousness',
          //   tileDescription:
          //       'Former astronaut Dr. Elena Vasquez explores how viewing Earth from space fundamentally alters human perception and values.',
          //   tileImage: Assets.images.designingVoid.path,
          //   tileCategoryTitle: 'Philosophy',
          //   tileTimeToRead: 12,
          //   tileReporterImage: Assets.images.vasquez.path,
          //   tileReporterName: 'Dr. Elena Vasquez',
          //   tileReporterJobPosition: 'Former ISS Commander',
          // ),
          // const SizedBox(
          //   height: 10.0,
          // ),
          // CelestialResidencesItemTile(
          //   tileTitle: 'Elysium Orbital Residence',
          //   tileImage: Assets.images.elysiumOrbitalResidence.path,
          //   tileCategoryTitle: 'Orbital',
          //   tilePrice: '\$95M',
          //   tileDescription:
          //       'Private module with 360° Earth views, zero-gravity lounge, private airlock, and dedicated concierge service.',
          //   tileButtonTitle: 'Virtual Tour',
          //   tileSpecificationTitle: 'Altitude',
          //   tileSpecificationValue: '450 km',
          //   tileSizeValue: '175 m²',
          //   tileAvailabilityValue: '2026',
          // ),
          // const SizedBox(
          //   height: 100.0,
          // ),
          VoyagesItemTile(
            tileDescription:
                'A 3-day orbital journey with panoramic Earth views, zero-gravity suite, and champagne service at apogee.',
            tileImage: Assets.images.orbitalLuxuryExperience.path,
            tilePrice: '\$28.5M per person',
            tileTitle: 'Orbital Luxury Experience',
          ),
          SvgPicture.asset(
            Assets.icons.celestiaLogo,
          ),
          const CustomSmallPurpleButton(
            buttonTitle: 'Login',
          ),
          const CustomMediumPurpleButton(
            buttonTitle: 'Preview Journey',
          ),
          const CustomLargePurpleButton(
            buttonTitle: 'Enter the Experience',
          ),
          const CustomWidePurpleButton(
            buttonTitle: 'Apply for Membership',
          ),
          const CustomLargeBlackButton(
            buttonTitle: 'Watch Teaser',
          ),
          const Text(
            'Flutter Landing Page',
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
          const SizedBox(height: 20),
          const Text(
            'Простий адаптивний лендинг на Flutter',
            style: TextStyle(fontSize: 18, color: Colors.white70),
          ),
        ],
      ),
    );
  }
}
