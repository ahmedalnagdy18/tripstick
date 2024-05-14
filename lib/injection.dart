import 'package:get_it/get_it.dart';
import 'package:tripstick/features/home/data/data_source/data_source.dart';
import 'package:tripstick/features/home/data/repository_imp/repository_imp.dart';
import 'package:tripstick/features/home/domian/usecases/usecase.dart';

GetIt sl = GetIt.instance;

void setupinjection() {
  sl.registerSingleton<HomeUsecase>(HomeUsecase(
      repository: HomeRepositoryImp(getDataSource: GetDataSource())));
}
