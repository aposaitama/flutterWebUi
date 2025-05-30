class JournalItemModel {
  final String tileTitle;
  final String tileDescription;
  final String tileImage;
  final String tileCategoryTitle;
  final int tileTimeToRead;
  final String tileReporterImage;
  final String tileReporterName;
  final String tileReporterJobPosition;

  JournalItemModel({
    required this.tileTitle,
    required this.tileDescription,
    required this.tileImage,
    required this.tileCategoryTitle,
    required this.tileTimeToRead,
    required this.tileReporterImage,
    required this.tileReporterName,
    required this.tileReporterJobPosition,
  });
}
