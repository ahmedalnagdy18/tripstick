import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:tripstick/features/home/data/model/api_model.dart';

class GetDataSource {
  Future<List<ApiResponse>> fetchPosts() async {
    try {
      String jsonString =
          await rootBundle.loadString('assets/dynamicSectionsData.json');

      final List<dynamic> data = jsonDecode(jsonString);

      List<ApiResponse> posts =
          data.map((json) => ApiResponse.fromJson(json)).toList();

      return posts;
    } catch (error) {
      throw Exception('Failed to load posts: $error');
    }
  }
}
