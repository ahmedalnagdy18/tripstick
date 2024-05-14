import 'package:tripstick/features/home/data/model/api_model.dart';
import 'package:tripstick/features/home/domian/entities/entity.dart';

abstract class HomeRepository {
  Future<List<ApiResponse>> getData(EntityModel entityModel);
}
