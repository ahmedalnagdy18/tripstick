part of 'home_cubit_cubit.dart';

@immutable
abstract class HomeCubitState {}

final class HomeCubitInitial extends HomeCubitState {}

class LoadingHomeState extends HomeCubitState {}

class SucsessHomeState extends HomeCubitState {
  final List<TravelInspirationEntity> postItems;

  SucsessHomeState({required this.postItems});
}

class HomeError extends HomeCubitState {}
