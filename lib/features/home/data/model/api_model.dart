import '../../domian/entities/entity.dart';

class ApiTravelInspiration extends TravelInspirationEntity {
  ApiTravelInspiration(
      {required super.id,
      required super.sequence,
      required super.type,
      super.imageUrl,
      required super.title,
      required super.subTitle,
      super.buttonTitle,
      super.list});

  factory ApiTravelInspiration.fromJson(Map<String, dynamic> json) {
    List<ApiDestination> list = [];
    if (json['list'] != null) {
      for (var element in json['list']) {
        list.add(ApiDestination(
            cityId: element['city_id'],
            title: element['title'],
            subTitle: element['sub_title'],
            imageUrl: element['image_url']));
      }
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

class ApiDestination extends Destination {
  ApiDestination({
    required super.cityId,
    required super.title,
    required super.subTitle,
    required super.imageUrl,
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
