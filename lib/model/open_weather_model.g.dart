// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OpenWeatherModelImpl _$$OpenWeatherModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenWeatherModelImpl(
      cod: json['cod'] as String?,
      message: (json['message'] as num?)?.toInt(),
      cnt: (json['cnt'] as num?)?.toInt(),
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : OpenWeatherListModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      city: json['city'] == null
          ? null
          : OpenWeatherCityModel.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OpenWeatherModelImplToJson(
        _$OpenWeatherModelImpl instance) =>
    <String, dynamic>{
      'cod': instance.cod,
      'message': instance.message,
      'cnt': instance.cnt,
      'list': instance.list,
      'city': instance.city,
    };

_$OpenWeatherListModelImpl _$$OpenWeatherListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenWeatherListModelImpl(
      dt: (json['dt'] as num?)?.toInt(),
      main: json['main'] == null
          ? null
          : OpenWeatherListMainModel.fromJson(
              json['main'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : OpenWeatherListWeatherModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      clouds: json['clouds'] == null
          ? null
          : OpenWeatherListCloudsModel.fromJson(
              json['clouds'] as Map<String, dynamic>),
      wind: json['wind'] == null
          ? null
          : OpenWeatherListWindModel.fromJson(
              json['wind'] as Map<String, dynamic>),
      visibility: (json['visibility'] as num?)?.toInt(),
      pop: (json['pop'] as num?)?.toInt(),
      sys: json['sys'] == null
          ? null
          : OpenWeatherListSysModel.fromJson(
              json['sys'] as Map<String, dynamic>),
      dtTxt: json['dt_txt'] as String?,
    );

Map<String, dynamic> _$$OpenWeatherListModelImplToJson(
        _$OpenWeatherListModelImpl instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'main': instance.main,
      'weather': instance.weather,
      'clouds': instance.clouds,
      'wind': instance.wind,
      'visibility': instance.visibility,
      'pop': instance.pop,
      'sys': instance.sys,
      'dt_txt': instance.dtTxt,
    };

_$OpenWeatherListMainModelImpl _$$OpenWeatherListMainModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenWeatherListMainModelImpl(
      temp: (json['temp'] as num?)?.toDouble(),
      feelsLike: (json['feels_like'] as num?)?.toDouble(),
      tempMin: (json['temp_min'] as num?)?.toDouble(),
      tempMax: (json['temp_max'] as num?)?.toDouble(),
      pressure: (json['pressure'] as num?)?.toInt(),
      seaLevel: (json['sea_level'] as num?)?.toInt(),
      grndLevel: (json['grnd_level'] as num?)?.toInt(),
      humidity: (json['humidity'] as num?)?.toInt(),
      tempKf: (json['temp_kf'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OpenWeatherListMainModelImplToJson(
        _$OpenWeatherListMainModelImpl instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
      'pressure': instance.pressure,
      'sea_level': instance.seaLevel,
      'grnd_level': instance.grndLevel,
      'humidity': instance.humidity,
      'temp_kf': instance.tempKf,
    };

_$OpenWeatherListWeatherModelImpl _$$OpenWeatherListWeatherModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenWeatherListWeatherModelImpl(
      id: (json['id'] as num?)?.toInt(),
      main: json['main'] as String?,
      description: json['description'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$$OpenWeatherListWeatherModelImplToJson(
        _$OpenWeatherListWeatherModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

_$OpenWeatherListCloudsModelImpl _$$OpenWeatherListCloudsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenWeatherListCloudsModelImpl(
      all: (json['all'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OpenWeatherListCloudsModelImplToJson(
        _$OpenWeatherListCloudsModelImpl instance) =>
    <String, dynamic>{
      'all': instance.all,
    };

_$OpenWeatherListWindModelImpl _$$OpenWeatherListWindModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenWeatherListWindModelImpl(
      speed: (json['speed'] as num?)?.toDouble(),
      deg: (json['deg'] as num?)?.toInt(),
      gust: (json['gust'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$OpenWeatherListWindModelImplToJson(
        _$OpenWeatherListWindModelImpl instance) =>
    <String, dynamic>{
      'speed': instance.speed,
      'deg': instance.deg,
      'gust': instance.gust,
    };

_$OpenWeatherListSysModelImpl _$$OpenWeatherListSysModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenWeatherListSysModelImpl(
      pod: json['pod'] as String?,
    );

Map<String, dynamic> _$$OpenWeatherListSysModelImplToJson(
        _$OpenWeatherListSysModelImpl instance) =>
    <String, dynamic>{
      'pod': instance.pod,
    };

_$OpenWeatherCityModelImpl _$$OpenWeatherCityModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenWeatherCityModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      coord: json['coord'] == null
          ? null
          : OpenWeatherCityCoordModel.fromJson(
              json['coord'] as Map<String, dynamic>),
      country: json['country'] as String?,
      population: (json['population'] as num?)?.toInt(),
      timezone: (json['timezone'] as num?)?.toInt(),
      sunrise: (json['sunrise'] as num?)?.toInt(),
      sunset: (json['sunset'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OpenWeatherCityModelImplToJson(
        _$OpenWeatherCityModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'coord': instance.coord,
      'country': instance.country,
      'population': instance.population,
      'timezone': instance.timezone,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };

_$OpenWeatherCityCoordModelImpl _$$OpenWeatherCityCoordModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenWeatherCityCoordModelImpl(
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$OpenWeatherCityCoordModelImplToJson(
        _$OpenWeatherCityCoordModelImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
    };
