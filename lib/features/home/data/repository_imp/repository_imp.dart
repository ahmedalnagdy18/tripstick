import 'package:tripstick/features/home/data/data_source/data_source.dart';
import 'package:tripstick/features/home/domian/entities/entity.dart';

import 'package:tripstick/features/home/domian/repositories/repository.dart';

class HomeRepositoryImp extends HomeRepository {
  final GetDataSource getDataSource;

  HomeRepositoryImp({required this.getDataSource});

  @override
  Future<List<TravelInspirationEntity>> getData() async {
    return await getDataSource.fetchPosts();
  }
}
