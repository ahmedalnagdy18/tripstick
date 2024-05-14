import 'package:tripstick/features/home/data/model/api_model.dart';
import 'package:tripstick/features/home/domian/entities/entity.dart';
import 'package:tripstick/features/home/domian/repositories/repository.dart';

class HomeUsecase {
  final HomeRepository repository;

  HomeUsecase({required this.repository});

  Future<List<ApiResponse>> call(EntityModel entityModel) async {
    try {
      return await repository.getData(entityModel);
    } catch (e) {
      rethrow;
    }
  }
}
