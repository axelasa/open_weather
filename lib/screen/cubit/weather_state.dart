part of 'weather_cubit.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}

class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherLoaded extends WeatherState {
  final OpenWeatherModel data;

  const WeatherLoaded(this.data) : super();

  @override
  List<Object> get props => [data];
}

class WeatherFail extends WeatherState {
  final dynamic error;

  const WeatherFail(this.error) : super();

  @override
  List<Object> get props => [error];
}
