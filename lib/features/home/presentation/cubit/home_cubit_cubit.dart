import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tripstick/features/home/domian/entities/entity.dart';
import 'package:tripstick/features/home/domian/usecases/usecase.dart';

part 'home_cubit_state.dart';

class HomeCubitCubit extends Cubit<HomeCubitState> {
  final HomeUsecase homeUsecase;
  HomeCubitCubit(this.homeUsecase) : super(HomeCubitInitial());
  void review(EntityModel entityModel) async {
    emit(LoadingHomeState());
    try {
      final data = await homeUsecase.call(entityModel);
      //  emit(SucsessHomeState(postItems: [data]));
    } catch (e) {
      if (e is FormatException) {
        emit(HomeError(e.message));
      }
      rethrow;
    }
    emit(HomeCubitInitial());
  }
}
