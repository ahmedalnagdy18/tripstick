class ApiResponse {
  String? lang;
  List<ApiTravelInspiration>? travelInspiration;

  ApiResponse({this.lang, this.travelInspiration});

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    List<dynamic> travelInspirationJson = json['travel_inspiration'];
    List<ApiTravelInspiration> travelInspiration = travelInspirationJson
        .map((item) => ApiTravelInspiration.fromJson(item))
        .toList();
    return ApiResponse(
        lang: json['lang'], travelInspiration: travelInspiration);
  }
}

class ApiTravelInspiration {
  int? id;
  int? sequence;
  String? type;
  String? imageUrl;
  String? title;
  String? subTitle;
  String? buttonTitle;
  List<ApiDestination>? list;

  ApiTravelInspiration({
    this.id,
    this.sequence,
    this.type,
    this.imageUrl,
    this.title,
    this.subTitle,
    this.buttonTitle,
    this.list,
  });

  factory ApiTravelInspiration.fromJson(Map<String, dynamic> json) {
    List<dynamic>? listJson = json['list'];
    List<ApiDestination>? list;
    if (listJson != null) {
      list = listJson.map((item) => ApiDestination.fromJson(item)).toList();
    }
    return ApiTravelInspiration(
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

class ApiDestination {
  int? cityId;
  String? title;
  String? subTitle;
  String? imageUrl;

  ApiDestination({
    this.cityId,
    this.title,
    this.subTitle,
    this.imageUrl,
  });

  factory ApiDestination.fromJson(Map<String, dynamic> json) {
    return ApiDestination(
      cityId: json['city_id'],
      title: json['title'],
      subTitle: json['sub_title'],
      imageUrl: json['image_url'],
    );
  }
}
