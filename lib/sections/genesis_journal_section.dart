import 'package:flutter/material.dart';
import 'package:welcome_to_mars/gen/assets.gen.dart';
import 'package:welcome_to_mars/models/journal_model/journal_model.dart';
import 'package:welcome_to_mars/widgets/item_tile/journal_item_tile.dart';
import 'package:welcome_to_mars/widgets/item_tile/section_description_tile.dart';
import 'package:welcome_to_mars/widgets/join_us_widget.dart';

class GenesisJournalSection extends StatelessWidget {
  GenesisJournalSection({super.key});

  final List<JournalItemModel> journalItems = [
    JournalItemModel(
      tileTitle: 'The Overview Effect: Transforming Consciousness',
      tileDescription:
          'Former astronaut Dr. Elena Vasquez explores how viewing Earth from space fundamentally alters human perception and values.',
      tileImage: Assets.images.overviewEffect.path,
      tileCategoryTitle: 'Philosophy',
      tileTimeToRead: 12,
      tileReporterImage: Assets.images.vasquez.path,
      tileReporterName: 'Dr. Elena Vasquez',
      tileReporterJobPosition: 'Former ISS Commander',
    ),
    JournalItemModel(
      tileTitle: 'Designing for the Void: Space Architecture',
      tileDescription:
          'Renowned architect Hiroshi Nakamura discusses the principles of designing habitable spaces in the most hostile environment known to humanity.',
      tileImage: Assets.images.designingVoid.path,
      tileCategoryTitle: 'Architecture',
      tileTimeToRead: 15,
      tileReporterImage: Assets.images.hiroshi.path,
      tileReporterName: 'Hiroshi Nakamura',
      tileReporterJobPosition: 'Space Habitat Architect',
    ),
    JournalItemModel(
      tileTitle: 'The Trillion-Dollar Orbital Economy',
      tileDescription:
          'Futurist and economist Dr. Aisha Mbeki examines how space industrialization will reshape global economics and create unprecedented wealth.',
      tileImage: Assets.images.orbitalEconomy.path,
      tileCategoryTitle: 'Economics',
      tileTimeToRead: 18,
      tileReporterImage: Assets.images.mbeki.path,
      tileReporterName: 'Dr. Aisha Mbeki',
      tileReporterJobPosition: 'Space Economist',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.images.starsBackground.path),
          fit: BoxFit.cover,
        ),
        color: const Color(0xFF030712),
      ),
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(
            height: 96.0,
          ),
          const SectionDescriptionTile(
            sectionTitle: 'Genesis Journal',
            sectionDescription:
                'Thought-provoking stories and insights from astronauts, space philosophers, futurists, and visionary architects.',
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
                return JournalItemTile(
                  tileTitle: journalItems[index].tileTitle,
                  tileDescription: journalItems[index].tileDescription,
                  tileImage: journalItems[index].tileImage,
                  tileCategoryTitle: journalItems[index].tileCategoryTitle,
                  tileTimeToRead: journalItems[index].tileTimeToRead,
                  tileReporterImage: journalItems[index].tileReporterImage,
                  tileReporterName: journalItems[index].tileReporterName,
                  tileReporterJobPosition:
                      journalItems[index].tileReporterJobPosition,
                );
              },
            ),
          ),
          const SizedBox(
            height: 64.0,
          ),
          const JoinUsWidget(),
          const SizedBox(
            height: 96.0,
          )
        ],
      ),
    );
  }
}
