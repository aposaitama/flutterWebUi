import 'package:flutter/material.dart';
import 'package:welcome_to_mars/gen/assets.gen.dart';
import 'package:welcome_to_mars/models/observatory_model/observatory_model.dart';
import 'package:welcome_to_mars/widgets/item_tile/observatory_item_tile.dart';
import 'package:welcome_to_mars/widgets/item_tile/observatory_without_image_item_tile.dart';
import 'package:welcome_to_mars/widgets/item_tile/section_description_tile.dart';
import 'package:welcome_to_mars/widgets/naming_widget.dart';

class ObservarotySection extends StatelessWidget {
  ObservarotySection({super.key});

  final List<ObservatoryWithoutImageModel> observatoryItems = [
    ObservatoryWithoutImageModel(
      tileDate: 'May 22-25, 2025',
      tileDescription:
          'Witness the aurora borealis from our private Arctic lodge during a predicted major solar storm event.',
      tilePricePerQuest: '\$45,000 per guest',
      tileTitle: 'Solar Storm Watch',
    ),
    ObservatoryWithoutImageModel(
      tileDate: 'August 11-13, 2025',
      tileDescription:
          'Private desert experience with luxury accommodations to view the year\'s most spectacular meteor shower.',
      tilePricePerQuest: '\$28,000 per guest',
      tileTitle: 'Perseids Meteor Shower',
    ),
    ObservatoryWithoutImageModel(
      tileDate: 'September 5, 2025',
      tileDescription:
          'Immersive audio-visual experience featuring sonified cosmic radiation and stellar phenomena.',
      tilePricePerQuest: '\$15,000 per guest',
      tileTitle: 'Deep Space Soundscape',
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
            sectionTitle: 'The Observatory',
            sectionDescription:
                'Experience the cosmos through exclusive live events, celestial phenomena, and immersive experiences.',
          ),
          const SizedBox(
            height: 67.0,
          ),
          Wrap(spacing: 33, runSpacing: 33, children: [
            ObservatoryItemTile(
              tileImage: Assets.images.lunarEclipse.path,
              tileDate: 'May 22-25, 2025',
              tileDescription:
                  'Witness the aurora borealis from our private Arctic lodge during a predicted major solar storm event.',
              tilePricePerQuest: '\$45,000 per guest',
              tileTitle: 'Solar Storm Watch',
            ),
            Column(
              children: List.generate(
                3,
                (index) {
                  // final item = items[index];
                  return Column(
                    children: [
                      ObservatoryWithoutImageItemTile(
                        tileDate: observatoryItems[index].tileDate,
                        tileDescription:
                            observatoryItems[index].tileDescription,
                        tilePricePerQuest:
                            observatoryItems[index].tilePricePerQuest,
                        tileTitle: observatoryItems[index].tileTitle,
                      ),
                      if (index != 3 - 1)
                        const SizedBox(
                          height: 33,
                        ),
                    ],
                  );
                },
              ),
            )
          ]),
          const SizedBox(
            height: 64.0,
          ),
          const NamingWidget(),
          const SizedBox(
            height: 96.0,
          )
        ],
      ),
    );
  }
}
