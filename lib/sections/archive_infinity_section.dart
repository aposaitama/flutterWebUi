import 'package:flutter/material.dart';
import 'package:welcome_to_mars/gen/assets.gen.dart';
import 'package:welcome_to_mars/models/archive_shop_model/archive_shop_model.dart';
import 'package:welcome_to_mars/widgets/item_tile/archive_shop_item_tile.dart';
import 'package:welcome_to_mars/widgets/item_tile/section_description_tile.dart';

class ArchiveInfinitySection extends StatelessWidget {
  ArchiveInfinitySection({super.key});

  final List<ArchiveShopModel> archiveShopItems = [
    ArchiveShopModel(
      tileTitle: 'Lyra Meteorite Necklace',
      tileDescription:
          '18K white gold pendant featuring a 4.5-carat fragment of the Chelyabinsk meteorite, surrounded by 2.3 carats of VS clarity diamonds.',
      tilePrice: '\$175,000',
      tileImage: Assets.images.necklace.path,
    ),
    ArchiveShopModel(
      tileTitle: 'Selene Lunar Essence Perfume',
      tileDescription:
          'Limited edition fragrance containing authenticated lunar regolith particles, housed in a hand-crafted crystal vessel with platinum accents.',
      tilePrice: '\$95,000',
      tileImage: Assets.images.perfume.path,
    ),
    ArchiveShopModel(
      tileTitle: 'Orbital Chronograph',
      tileDescription:
          'Space-flown mechanical timepiece with Gibeon meteorite dial, platinum case, and sapphire crystal displaying 14 orbits around Earth.',
      tilePrice: '\$225,000',
      tileImage: Assets.images.orbitalChronograph.path,
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
            sectionTitle: 'Archive of Infinity',
            sectionDescription:
                'Curated space collectibles and artifacts for the discerning cosmic connoisseur.',
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
                return ArchiveShopItemTile(
                  tileTitle: archiveShopItems[index].tileTitle,
                  tileDescription: archiveShopItems[index].tileDescription,
                  tilePrice: archiveShopItems[index].tilePrice,
                  tileImage: archiveShopItems[index].tileImage,
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
