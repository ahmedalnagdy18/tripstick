import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tripstick/features/home/domian/entities/entity.dart';

import 'package:tripstick/features/home/domian/usecases/usecase.dart';

part 'home_cubit_state.dart';

class HomeCubitCubit extends Cubit<HomeCubitState> {
  final HomeUsecase homeUsecase;
  HomeCubitCubit({required this.homeUsecase}) : super(HomeCubitInitial());
  void review() async {
    emit(LoadingHomeState());
    try {
      final data = await homeUsecase.call();
      emit(SucsessHomeState(postItems: data));
    } catch (e) {
      if (e is FormatException) {
        emit(HomeError());
      }
      rethrow;
    }
  }
}
