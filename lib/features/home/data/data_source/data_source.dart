import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:tripstick/features/home/data/model/api_model.dart';

import 'package:tripstick/features/home/domian/entities/entity.dart';

class GetDataSource {
  Future<List<TravelInspirationEntity>> fetchPosts() async {
    try {
      final List<TravelInspirationEntity> posts = [];
      String jsonString =
          await rootBundle.loadString('assets/dynamicSectionsData.json');

      final Map<String, dynamic> data = jsonDecode(jsonString);

      for (var element in data['travel_inspiration']) {
        posts.add(ApiTravelInspiration.fromJson(element));
      }

      return posts;
    } catch (error) {
      throw Exception('Failed to load posts: $error');
    }
  }
}
