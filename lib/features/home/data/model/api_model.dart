class ApiResponse {
  final String lang;
  final List<TravelInspiration> travelInspiration;

  ApiResponse({required this.lang, required this.travelInspiration});

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    List<dynamic> travelInspirationJson = json['travel_inspiration'];
    List<TravelInspiration> travelInspiration = travelInspirationJson
        .map((item) => TravelInspiration.fromJson(item))
        .toList();
    return ApiResponse(
        lang: json['lang'], travelInspiration: travelInspiration);
  }
}

class TravelInspiration {
  final int id;
  final int sequence;
  final String type;
  final String? imageUrl;
  final String title;
  final String subTitle;
  final String? buttonTitle;
  final List<Destination>? list; // Nullable because not all items have a list

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

  factory TravelInspiration.fromJson(Map<String, dynamic> json) {
    List<dynamic>? listJson = json['list'];
    List<Destination>? list;
    if (listJson != null) {
      list = listJson.map((item) => Destination.fromJson(item)).toList();
    }
    return TravelInspiration(
      id: json['id'],
      sequence: json['sequence'],
      type: json['type'],
      imageUrl: json['image_url'],
      title: json['title'],
      subTitle: json['sub_title'],
      buttonTitle: json['button_title'],
      list: list,
    );
  }
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

  factory Destination.fromJson(Map<String, dynamic> json) {
    return Destination(
      cityId: json['city_id'],
      title: json['title'],
      subTitle: json['sub_title'],
      imageUrl: json['image_url'],
    );
  }
}
