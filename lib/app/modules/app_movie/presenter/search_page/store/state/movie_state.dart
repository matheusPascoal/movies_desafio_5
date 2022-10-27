import '../../../../domain/entities/movies_entity.dart';

abstract class MovieState {}

class MoviesLoadingState extends MovieState {}

class MoviesSuccessState extends MovieState {
  final MovieEntity moviesEntity;

  MoviesSuccessState(this.moviesEntity);
}

class MoviesInitState extends MovieState {}
