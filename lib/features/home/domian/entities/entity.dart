class EntityModel {
  final String lang;
  final List<TravelInspiration> travelInspiration;

  EntityModel({required this.lang, required this.travelInspiration});
}

class TravelInspiration {
  final int id;
  final int sequence;
  final String type;
  final String? imageUrl;
  final String title;
  final String subTitle;
  final String? buttonTitle;
  final List<Destination>? list;
  TravelInspiration({
    required this.id,
    required this.sequence,
    required this.type,
    required this.imageUrl,
    required this.title,
    required this.subTitle,
    this.buttonTitle,
    this.list,
  });
}

class Destination {
  final int cityId;
  final String title;
  final String subTitle;
  final String imageUrl;

  Destination({
    required this.cityId,
    required this.title,
    required this.subTitle,
    required this.imageUrl,
  });
}
