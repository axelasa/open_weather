import 'package:hive/hive.dart';
import 'package:open_weather/model/open_weather_model.dart';
part 'hive_weather_model.g.dart';

@HiveType(typeId: 0)
class HiveOpenWeatherModel extends HiveObject {
  @HiveField(0)
  String? cod;

  @HiveField(1)
  int? message;

  @HiveField(2)
  int? cnt;

  @HiveField(3)
  List<HiveOpenWeatherListModel>? list;

  @HiveField(4)
  HiveOpenWeatherCityModel? city;

  @HiveField(5)
  int? timestamp;

 
  HiveOpenWeatherModel({
    this.cod,
    this.message,
    this.cnt,
    this.list,
    this.city,
    this.timestamp,
  });


  factory HiveOpenWeatherModel.fromOpenWeather(OpenWeatherModel model) {
    return HiveOpenWeatherModel(
      cod: model.cod,
      message: model.message,
      cnt: model.cnt,
      list: model.list?.map((item) =>
          HiveOpenWeatherListModel.fromOpenWeatherListModel(item!)).toList(),
      city: model.city != null
          ? HiveOpenWeatherCityModel.fromOpenWeatherCityModel(model.city!)
          : null,
      timestamp: DateTime.now().millisecondsSinceEpoch,
    );
  }

  OpenWeatherModel toOpenWeatherModel() {
    return OpenWeatherModel(
      cod: cod,
      message: message,
      cnt: cnt,
      list: list?.map((item) => item.toOpenWeatherListModel()).toList(),
      city: city?.toOpenWeatherCityModel(),
    );
  }
}

@HiveType(typeId: 1)
class HiveOpenWeatherListModel extends HiveObject {
  @HiveField(0)
  int? dt;

  @HiveField(1)
  HiveOpenWeatherListMainModel? main;

  @HiveField(2)
  List<HiveOpenWeatherListWeatherModel>? weather;

  @HiveField(3)
  HiveOpenWeatherListCloudsModel? clouds;

  @HiveField(4)
  HiveOpenWeatherListWindModel? wind;

  @HiveField(5)
  int? visibility;

  @HiveField(6)
  int? pop;

  @HiveField(7)
  HiveOpenWeatherListSysModel? sys;

  @HiveField(8)
  String? dtTxt;

 
  HiveOpenWeatherListModel({
    this.dt,
    this.main,
    this.weather,
    this.clouds,
    this.wind,
    this.visibility,
    this.pop,
    this.sys,
    this.dtTxt,
  });

  factory HiveOpenWeatherListModel.fromOpenWeatherListModel(OpenWeatherListModel model) {
    return HiveOpenWeatherListModel(
      dt: model.dt,
      main: model.main != null
          ? HiveOpenWeatherListMainModel.fromOpenWeatherListMainModel(model.main!)
          : null,
      weather: model.weather?.map((w) =>
          HiveOpenWeatherListWeatherModel.fromOpenWeatherListWeatherModel(w!)).toList(),
      clouds: model.clouds != null
          ? HiveOpenWeatherListCloudsModel(all: model.clouds?.all)
          : null,
      wind: model.wind != null
          ? HiveOpenWeatherListWindModel(
          speed: model.wind?.speed,
          deg: model.wind?.deg,
          gust: model.wind?.gust)
          : null,
      visibility: model.visibility,
      pop: model.pop,
      sys: model.sys != null
          ? HiveOpenWeatherListSysModel(pod: model.sys?.pod)
          : null,
      dtTxt: model.dtTxt,
    );
  }

  OpenWeatherListModel toOpenWeatherListModel() {
    return OpenWeatherListModel(
      dt: dt,
      main: main?.toOpenWeatherListMainModel(),
      weather: weather?.map((w) => w.toOpenWeatherListWeatherModel()).toList(),
      clouds: clouds != null ? OpenWeatherListCloudsModel(all: clouds?.all) : null,
      wind: wind != null
          ? OpenWeatherListWindModel(
          speed: wind?.speed,
          deg: wind?.deg,
          gust: wind?.gust)
          : null,
      visibility: visibility,
      pop: pop,
      sys: sys != null ? OpenWeatherListSysModel(pod: sys?.pod) : null,
      dtTxt: dtTxt,
    );
  }
}

@HiveType(typeId: 2)
class HiveOpenWeatherListMainModel extends HiveObject {
  @HiveField(0)
  double? temp;

  @HiveField(1)
  double? feelsLike;

  @HiveField(2)
  double? tempMin;

  @HiveField(3)
  double? tempMax;

  @HiveField(4)
  int? pressure;

  @HiveField(5)
  int? seaLevel;

  @HiveField(6)
  int? grndLevel;

  @HiveField(7)
  int? humidity;

  @HiveField(8)
  int? tempKf;

 
  HiveOpenWeatherListMainModel({
    this.temp,
    this.feelsLike,
    this.tempMin,
    this.tempMax,
    this.pressure,
    this.seaLevel,
    this.grndLevel,
    this.humidity,
    this.tempKf,
  });

  factory HiveOpenWeatherListMainModel.fromOpenWeatherListMainModel(OpenWeatherListMainModel model) {
    return HiveOpenWeatherListMainModel(
      temp: model.temp,
      feelsLike: model.feelsLike,
      tempMin: model.tempMin,
      tempMax: model.tempMax,
      pressure: model.pressure,
      seaLevel: model.seaLevel,
      grndLevel: model.grndLevel,
      humidity: model.humidity,
      tempKf: model.tempKf,
    );
  }

  OpenWeatherListMainModel toOpenWeatherListMainModel() {
    return OpenWeatherListMainModel(
      temp: temp,
      feelsLike: feelsLike,
      tempMin: tempMin,
      tempMax: tempMax,
      pressure: pressure,
      seaLevel: seaLevel,
      grndLevel: grndLevel,
      humidity: humidity,
      tempKf: tempKf,
    );
  }
}

@HiveType(typeId: 3)
class HiveOpenWeatherListWeatherModel extends HiveObject {
  @HiveField(0)
  int? id;

  @HiveField(1)
  String? main;

  @HiveField(2)
  String? description;

  @HiveField(3)
  String? icon;

 
  HiveOpenWeatherListWeatherModel({
    this.id,
    this.main,
    this.description,
    this.icon,
  });

  factory HiveOpenWeatherListWeatherModel.fromOpenWeatherListWeatherModel(OpenWeatherListWeatherModel model) {
    return HiveOpenWeatherListWeatherModel(
      id: model.id,
      main: model.main,
      description: model.description,
      icon: model.icon,
    );
  }

  OpenWeatherListWeatherModel toOpenWeatherListWeatherModel() {
    return OpenWeatherListWeatherModel(
      id: id,
      main: main,
      description: description,
      icon: icon,
    );
  }
}

@HiveType(typeId: 4)
class HiveOpenWeatherListCloudsModel extends HiveObject {
  @HiveField(0)
  int? all;

 
  HiveOpenWeatherListCloudsModel({
    this.all,
  });

  factory HiveOpenWeatherListCloudsModel.fromOpenWeatherListCloudsModel(OpenWeatherListCloudsModel model) {
    return HiveOpenWeatherListCloudsModel(
      all: model.all,
    );
  }

  OpenWeatherListCloudsModel toOpenWeatherListCloudsModel() {
    return OpenWeatherListCloudsModel(all: all);
  }
}

@HiveType(typeId: 5)
class HiveOpenWeatherListWindModel extends HiveObject {
  @HiveField(0)
  double? speed;

  @HiveField(1)
  int? deg;

  @HiveField(2)
  double? gust;

 
  HiveOpenWeatherListWindModel({
    this.speed,
    this.deg,
    this.gust,
  });

  factory HiveOpenWeatherListWindModel.fromOpenWeatherListWindModel(OpenWeatherListWindModel model) {
    return HiveOpenWeatherListWindModel(
      speed: model.speed,
      deg: model.deg,
      gust: model.gust,
    );
  }

  OpenWeatherListWindModel toOpenWeatherListWindModel() {
    return OpenWeatherListWindModel(
      speed: speed,
      deg: deg,
      gust: gust,
    );
  }
}

@HiveType(typeId: 6)
class HiveOpenWeatherListSysModel extends HiveObject {
  @HiveField(0)
  String? pod;

 
  HiveOpenWeatherListSysModel({
    this.pod,
  });

  factory HiveOpenWeatherListSysModel.fromOpenWeatherListSysModel(OpenWeatherListSysModel model) {
    return HiveOpenWeatherListSysModel(
      pod: model.pod,
    );
  }

  OpenWeatherListSysModel toOpenWeatherListSysModel() {
    return OpenWeatherListSysModel(pod: pod);
  }
}

@HiveType(typeId: 7)
class HiveOpenWeatherCityModel extends HiveObject {
  @HiveField(0)
  int? id;

  @HiveField(1)
  String? name;

  @HiveField(2)
  HiveOpenWeatherCityCoordModel? coord;

  @HiveField(3)
  String? country;

  @HiveField(4)
  int? population;

  @HiveField(5)
  int? timezone;

  @HiveField(6)
  int? sunrise;

  @HiveField(7)
  int? sunset;

 
  HiveOpenWeatherCityModel({
    this.id,
    this.name,
    this.coord,
    this.country,
    this.population,
    this.timezone,
    this.sunrise,
    this.sunset,
  });

  factory HiveOpenWeatherCityModel.fromOpenWeatherCityModel(OpenWeatherCityModel model) {
    return HiveOpenWeatherCityModel(
      id: model.id,
      name: model.name,
      coord: model.coord != null
          ? HiveOpenWeatherCityCoordModel.fromOpenWeatherCityCoordModel(model.coord!)
          : null,
      country: model.country,
      population: model.population,
      timezone: model.timezone,
      sunrise: model.sunrise,
      sunset: model.sunset,
    );
  }

  OpenWeatherCityModel toOpenWeatherCityModel() {
    return OpenWeatherCityModel(
      id: id,
      name: name,
      coord: coord?.toOpenWeatherCityCoordModel(),
      country: country,
      population: population,
      timezone: timezone,
      sunrise: sunrise,
      sunset: sunset,
    );
  }
}

@HiveType(typeId: 8)
class HiveOpenWeatherCityCoordModel extends HiveObject {
  @HiveField(0)
  double? lat;

  @HiveField(1)
  double? lon;

 
  HiveOpenWeatherCityCoordModel({
    this.lat,
    this.lon,
  });

  factory HiveOpenWeatherCityCoordModel.fromOpenWeatherCityCoordModel(OpenWeatherCityCoordModel model) {
    return HiveOpenWeatherCityCoordModel(
      lat: model.lat,
      lon: model.lon,
    );
  }

  OpenWeatherCityCoordModel toOpenWeatherCityCoordModel() {
    return OpenWeatherCityCoordModel(
      lat: lat,
      lon: lon,
    );
  }
}