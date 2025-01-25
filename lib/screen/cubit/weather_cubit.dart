import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:open_weather/model/open_weather_model.dart';
import 'package:open_weather/network/api_call.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final ApiService service;
  WeatherCubit(this.service) : super(WeatherInitial());
  
  void fetchWeatherData(Map<String,dynamic> city){
    emit(WeatherLoading());
    service.getWeatherForecast(city).then((value){
      emit(WeatherLoaded(value));
    }).onError((error,stackTrace){
      emit(WeatherFail(error));
    });
  }
}
