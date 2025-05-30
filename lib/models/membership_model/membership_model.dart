class MembershipModel {
  final String title;
  final String description;
  final String price;
  final String category;
  final int limit;
  final List<String> benefits;

  MembershipModel({
    required this.title,
    required this.description,
    required this.price,
    required this.category,
    required this.limit,
    required this.benefits,
  });
}
