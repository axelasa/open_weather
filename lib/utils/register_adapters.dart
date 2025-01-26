import 'package:hive/hive.dart';

import '../data/model/hive_weather_model.dart';


void registerAdapters() {
  Hive.registerAdapter(HiveOpenWeatherModelAdapter());
  Hive.registerAdapter(HiveOpenWeatherListModelAdapter());
  Hive.registerAdapter(HiveOpenWeatherListMainModelAdapter());
  Hive.registerAdapter(HiveOpenWeatherListWeatherModelAdapter());
  Hive.registerAdapter(HiveOpenWeatherListCloudsModelAdapter());
  Hive.registerAdapter(HiveOpenWeatherListWindModelAdapter());
  Hive.registerAdapter(HiveOpenWeatherListSysModelAdapter());
  Hive.registerAdapter(HiveOpenWeatherCityModelAdapter());
  Hive.registerAdapter(HiveOpenWeatherCityCoordModelAdapter());
}