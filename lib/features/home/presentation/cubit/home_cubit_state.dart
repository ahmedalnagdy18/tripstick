part of 'home_cubit_cubit.dart';

@immutable
sealed class HomeCubitState {}

final class HomeCubitInitial extends HomeCubitState {}

class LoadingHomeState extends HomeCubitState {}

class SucsessHomeState extends HomeCubitState {
  final List<EntityModel> postItems;

  SucsessHomeState({required this.postItems});
  List<Object> get props => [postItems];
}

class HomeError extends HomeCubitState {
  final String message;

  HomeError(this.message);
}
