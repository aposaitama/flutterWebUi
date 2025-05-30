import 'package:flutter/material.dart';
import 'package:welcome_to_mars/gen/assets.gen.dart';
import 'package:welcome_to_mars/models/celestia_residence_model/celestia_residence_model.dart';
import 'package:welcome_to_mars/widgets/buttons/custom_large_purple_button.dart';
import 'package:welcome_to_mars/widgets/item_tile/celestial_residences_item_tile.dart';
import 'package:welcome_to_mars/widgets/item_tile/section_description_tile.dart';

class CelestialResidences extends StatelessWidget {
  CelestialResidences({super.key});

  final List<CelestialResidenceModel> celestialResidences = [
    CelestialResidenceModel(
      title: 'Elysium Orbital Residence',
      imagePath: Assets.images.elysiumOrbitalResidence.path,
      categoryTitle: 'Orbital',
      price: '\$95M',
      description:
          'Private module with 360° Earth views, zero-gravity lounge, private airlock, and dedicated concierge service.',
      buttonTitle: 'Virtual Tour',
      specificationTitle: 'Altitude',
      specificationValue: '450 km',
      sizeValue: '175 m²',
      availabilityValue: '2026',
    ),
    CelestialResidenceModel(
      title: 'Tranquility Lunar Villa',
      imagePath: Assets.images.tranquilityLunarVilla.path,
      categoryTitle: 'Lunar',
      price: '\$225M',
      description:
          'Exclusive lunar property with Earth-view dome, private regolith garden, and helium-3 harvesting rights.',
      buttonTitle: 'Virtual Tour',
      specificationTitle: 'Location',
      specificationValue: 'Mare Tranquillitatis',
      sizeValue: '320 m²',
      availabilityValue: '2029',
    ),
    CelestialResidenceModel(
      title: 'Olympus Martian Estate',
      imagePath: Assets.images.olympusMartianEstate.path,
      categoryTitle: 'Martian',
      price: '\$450M',
      description:
          'Concept property with mountain views, private greenhouse, water rights, and exclusive mineral claims.',
      buttonTitle: 'Concept Preview',
      specificationTitle: 'Location',
      specificationValue: 'Olympus Mons Base',
      sizeValue: '485 m²',
      availabilityValue: '2035',
    ),
    CelestialResidenceModel(
      title: 'Celestial Voyager Private Vessel',
      imagePath: Assets.images.velestialVoyagerPrivateVessel.path,
      categoryTitle: 'Vessel',
      price: '\$175M',
      description:
          'Private space yacht with customizable interior, autonomous navigation, and docking rights at all Celestia stations.',
      buttonTitle: 'Virtual Tour',
      specificationTitle: 'Range',
      specificationValue: 'Earth to Lunar',
      sizeValue: '8 persons',
      availabilityValue: '2027',
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
            sectionTitle: 'Celestial Residences',
            sectionDescription:
                'Exclusive properties beyond Earth — from orbital habitats to lunar villas and Martian concept homes.',
          ),
          const SizedBox(
            height: 67.0,
          ),
          Wrap(
            spacing: 33,
            runSpacing: 33,
            children: List.generate(
              4,
              (index) {
                return CelestialResidencesItemTile(
                  tileTitle: celestialResidences[index].title,
                  tileImage: celestialResidences[index].imagePath,
                  tileCategoryTitle: celestialResidences[index].categoryTitle,
                  tilePrice: celestialResidences[index].price,
                  tileDescription: celestialResidences[index].description,
                  tileButtonTitle: celestialResidences[index].buttonTitle,
                  tileSpecificationTitle:
                      celestialResidences[index].specificationTitle,
                  tileSpecificationValue:
                      celestialResidences[index].specificationValue,
                  tileSizeValue: celestialResidences[index].sizeValue,
                  tileAvailabilityValue:
                      celestialResidences[index].availabilityValue,
                );
              },
            ),
          ),
          const SizedBox(
            height: 64.0,
          ),
          const Center(
            child: CustomLargePurpleButton(
              buttonTitle: 'Explore All Properties',
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
