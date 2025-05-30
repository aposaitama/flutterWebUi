import 'package:flutter/material.dart';
import 'package:welcome_to_mars/models/membership_model/membership_model.dart';
import 'package:welcome_to_mars/widgets/item_tile/membersip_item_tile.dart';
import 'package:welcome_to_mars/widgets/item_tile/section_description_tile.dart';

class MembershipSection extends StatelessWidget {
  MembershipSection({super.key});

  final List<MembershipModel> cosmicExplorer = [
    MembershipModel(
      title: 'Cosmic Explorer',
      description:
          'Begin your journey beyond Earth with priority access to suborbital flights and exclusive events.',
      price: '\$250.000',
      category: 'Platinum',
      limit: 500,
      benefits: [
        "Priority booking for suborbital experiences",
        "Invitation to annual Stellar Gala events",
        "Digital celestial passport with journey tracking",
        "Access to member-only Observatory events",
        "Concierge service for all bookings",
      ],
    ),
    MembershipModel(
      title: 'Orbital Voyager',
      description:
          'Experience the full spectrum of near-Earth space with priority orbital journey access.',
      price: '\$1,250,000',
      category: 'Diamond',
      limit: 100,
      benefits: [
        "All Platinum benefits included",
        "Priority booking for orbital journeys",
        "Private astronaut training sessions",
        "Exclusive zero-gravity art experiences",
        "Early access to Celestial Residences",
        "NFT space logbook with journey verification",
      ],
    ),
    MembershipModel(
      title: 'Interplanetary Pioneer',
      description:
          'Our most exclusive tier with unprecedented access to lunar journeys and beyond.',
      price: '\$5,000,000',
      category: 'Cosmic',
      limit: 25,
      benefits: [
        "All Diamond benefits included",
        "Priority booking for lunar journeys",
        "First access to Martian expeditions",
        "Private lunar gala event invitations",
        "Naming rights for celestial discoveries",
        "Personalized space concierge team",
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      decoration: const BoxDecoration(
        color: Color(0xFF030712),
      ),
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(
            height: 96.0,
          ),
          const SectionDescriptionTile(
            sectionTitle: 'Stellar Circle Membership',
            sectionDescription:
                'Join our exclusive membership club for unprecedented access to cosmic experiences and privileges.',
          ),
          const SizedBox(
            height: 67.0,
          ),
          Wrap(
            spacing: 33,
            runSpacing: 33,
            children: List.generate(
              3,
              (index) {
                return MembersipItemTile(
                  tileTitle: cosmicExplorer[index].title,
                  tileDescription: cosmicExplorer[index].description,
                  tilePrice: cosmicExplorer[index].price,
                  tileCategory: cosmicExplorer[index].category,
                  tileLimit: cosmicExplorer[index].limit,
                  membershipBenefits: cosmicExplorer[index].benefits,
                );
              },
            ),
          ),
          const SizedBox(
            height: 96.0,
          )
        ],
      ),
    );
  }
}
