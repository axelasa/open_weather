import 'package:hive/hive.dart';
import '../model/hive_weather_model.dart';

class HiveService {
   static const String _weatherBoxName = 'weatherBox';

   Box<HiveOpenWeatherModel> get box => Hive.box<HiveOpenWeatherModel>(_weatherBoxName);



  Future<void> saveWeatherData(HiveOpenWeatherModel weatherData) async {

    await box.put('currentWeather', weatherData);

    await box.put('lastUpdated', DateTime.now().toIso8601String() as HiveOpenWeatherModel);
  }


  HiveOpenWeatherModel? getWeatherData()  {

    return box.get('currentWeather');
  }


  Future<void> updateWeatherData(HiveOpenWeatherModel weatherData) async {

    await box.put('currentWeather', weatherData);
  }


  Future<void> deleteWeatherData() async {

    await box.delete('currentWeather');
  }
}