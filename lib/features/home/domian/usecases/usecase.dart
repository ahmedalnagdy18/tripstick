import 'package:tripstick/features/home/domian/entities/entity.dart';
import 'package:tripstick/features/home/domian/repositories/repository.dart';

class HomeUsecase {
  final HomeRepository repository;

  HomeUsecase({required this.repository});

  Future<List<TravelInspirationEntity>> call() async {
    try {
      return await repository.getData();
    } catch (e) {
      rethrow;
    }
  }
}
