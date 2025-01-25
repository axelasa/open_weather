import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'open_weather_model.freezed.dart';

part 'open_weather_model.g.dart';


OpenWeatherModel openWeatherModelFromJson(String str) => OpenWeatherModel.fromJson(json.decode(str));
String openWeatherModelToJson(OpenWeatherModel data) => json.encode(data.toJson());

@freezed
class OpenWeatherModel with _$OpenWeatherModel {
  factory OpenWeatherModel({
    String? cod,
    int? message,
    int? cnt,
    List<OpenWeatherListModel?>? list,
    OpenWeatherCityModel? city,
  }) = _OpenWeatherModel;

  factory OpenWeatherModel.fromJson(Map<String, dynamic> json) =>
      _$OpenWeatherModelFromJson(json);
}

@freezed
class OpenWeatherListModel with _$OpenWeatherListModel {
  factory OpenWeatherListModel({
    int? dt,
    OpenWeatherListMainModel? main,
    List<OpenWeatherListWeatherModel?>? weather,
    OpenWeatherListCloudsModel? clouds,
    OpenWeatherListWindModel? wind,
    int? visibility,
    int? pop,
    OpenWeatherListSysModel? sys,
    @JsonKey(name: 'dt_txt') String? dtTxt,
  }) = _OpenWeatherListModel;

  factory OpenWeatherListModel.fromJson(Map<String, dynamic> json) =>
      _$OpenWeatherListModelFromJson(json);
}

@freezed
class OpenWeatherListMainModel with _$OpenWeatherListMainModel {
  factory OpenWeatherListMainModel({
    double? temp,
    @JsonKey(name: 'feels_like') double? feelsLike,
    @JsonKey(name: 'temp_min') double? tempMin,
    @JsonKey(name: 'temp_max') double? tempMax,
    int? pressure,
    @JsonKey(name: 'sea_level') int? seaLevel,
    @JsonKey(name: 'grnd_level') int? grndLevel,
    int? humidity,
    @JsonKey(name: 'temp_kf') int? tempKf,
  }) = _OpenWeatherListMainModel;

  factory OpenWeatherListMainModel.fromJson(Map<String, dynamic> json) =>
      _$OpenWeatherListMainModelFromJson(json);
}

@freezed
class OpenWeatherListWeatherModel with _$OpenWeatherListWeatherModel {
  factory OpenWeatherListWeatherModel({
    int? id,
    String? main,
    String? description,
    String? icon,
  }) = _OpenWeatherListWeatherModel;

  factory OpenWeatherListWeatherModel.fromJson(Map<String, dynamic> json) =>
      _$OpenWeatherListWeatherModelFromJson(json);
}

@freezed
class OpenWeatherListCloudsModel with _$OpenWeatherListCloudsModel {
  factory OpenWeatherListCloudsModel({
    int? all,
  }) = _OpenWeatherListCloudsModel;

  factory OpenWeatherListCloudsModel.fromJson(Map<String, dynamic> json) =>
      _$OpenWeatherListCloudsModelFromJson(json);
}

@freezed
class OpenWeatherListWindModel with _$OpenWeatherListWindModel {
  factory OpenWeatherListWindModel({
    double? speed,
    int? deg,
    double? gust,
  }) = _OpenWeatherListWindModel;

  factory OpenWeatherListWindModel.fromJson(Map<String, dynamic> json) =>
      _$OpenWeatherListWindModelFromJson(json);
}

@freezed
class OpenWeatherListSysModel with _$OpenWeatherListSysModel {
  factory OpenWeatherListSysModel({
    String? pod,
  }) = _OpenWeatherListSysModel;

  factory OpenWeatherListSysModel.fromJson(Map<String, dynamic> json) =>
      _$OpenWeatherListSysModelFromJson(json);
}

@freezed
class OpenWeatherCityModel with _$OpenWeatherCityModel {
  factory OpenWeatherCityModel({
    int? id,
    String? name,
    OpenWeatherCityCoordModel? coord,
    String? country,
    int? population,
    int? timezone,
    int? sunrise,
    int? sunset,
  }) = _OpenWeatherCityModel;

  factory OpenWeatherCityModel.fromJson(Map<String, dynamic> json) =>
      _$OpenWeatherCityModelFromJson(json);
}

@freezed
class OpenWeatherCityCoordModel with _$OpenWeatherCityCoordModel {
  factory OpenWeatherCityCoordModel({
    double? lat,
    double? lon,
  }) = _OpenWeatherCityCoordModel;

  factory OpenWeatherCityCoordModel.fromJson(Map<String, dynamic> json) =>
      _$OpenWeatherCityCoordModelFromJson(json);
}
