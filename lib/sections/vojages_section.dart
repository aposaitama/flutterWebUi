import 'package:flutter/material.dart';
import 'package:welcome_to_mars/gen/assets.gen.dart';
import 'package:welcome_to_mars/models/voyage_model/voyage_model.dart';
import 'package:welcome_to_mars/widgets/buttons/custom_large_purple_button.dart';
import 'package:welcome_to_mars/widgets/item_tile/section_description_tile.dart';
import 'package:welcome_to_mars/widgets/item_tile/voyages_item_tile.dart';

class VojagesSection extends StatelessWidget {
  VojagesSection({super.key});

  final List<VoyageModel> voyagesList = [
    VoyageModel(
      title: 'Orbital Luxury Experience',
      description:
          'A 3-day orbital journey with panoramic Earth views, zero-gravity suite, and champagne service at apogee.',
      imagePath: Assets.images.orbitalLuxuryExperience.path,
      price: '\$28.5M per person',
    ),
    VoyageModel(
      title: 'Lunar Orbit Expedition',
      description:
          'Circle the moon on a 6-day journey with private suites, gourmet dining, and exclusive lunar photography sessions.',
      imagePath: Assets.images.lunarOrbitExpedition.path,
      price: '\$75M per person',
    ),
    VoyageModel(
      title: 'Edge of Space Experience',
      description:
          'A 2-hour suborbital flight reaching 100km altitude with 5 minutes of weightlessness and Earth curvature views.',
      imagePath: Assets.images.edgeOfSpaceExperience.path,
      price: '\$450K per person',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 96.0,
          ),
          const SectionDescriptionTile(
            sectionTitle: 'Private Space Voyages',
            sectionDescription:
                'Embark on extraordinary journeys beyond Earth\'s atmosphere with our elite aerospace partners.',
          ),
          const SizedBox(
            height: 65.0,
          ),
          Wrap(
            spacing: 33,
            runSpacing: 33,
            children: List.generate(3, (index) {
              return VoyagesItemTile(
                tileDescription: voyagesList[index].description,
                tileImage: voyagesList[index].imagePath,
                tilePrice: voyagesList[index].price,
                tileTitle: voyagesList[index].title,
              );
            }),
          ),
          const SizedBox(
            height: 64.0,
          ),
          const Center(
            child: CustomLargePurpleButton(
              buttonTitle: 'Explore All Voyages',
            ),
          ),
          const SizedBox(
            height: 96.0,
          ),
        ],
      ),
    );
  }
}
