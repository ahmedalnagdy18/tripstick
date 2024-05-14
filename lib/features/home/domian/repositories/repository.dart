import 'package:tripstick/features/home/domian/entities/entity.dart';

abstract class HomeRepository {
  Future<List<TravelInspirationEntity>> getData();
}
