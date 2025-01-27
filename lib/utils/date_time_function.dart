import 'package:intl/intl.dart';

import '../model/open_weather_model.dart';

Map<String, String> convertUnixTimestamp(int unixTimestamp) {
  DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(unixTimestamp * 1000);

  return {
    'day': DateFormat('EEEE').format(dateTime),
    'dateTime': DateFormat('yyyy-MM-dd HH:mm:ss').format(dateTime),
    'month': DateFormat('MMMM').format(dateTime),
  };
}

Map<String, OpenWeatherListModel?> getFirstEntryForNextThreeDays(Map<String, List<OpenWeatherListModel>> groupedData) {
  DateTime now = DateTime.now();
  String today = DateFormat('yyyy-MM-dd').format(now);
  String tomorrow = DateFormat('yyyy-MM-dd').format(now.add(Duration(days: 1)));
  String dayAfterTomorrow = DateFormat('yyyy-MM-dd').format(now.add(Duration(days: 2)));

  return {
    'today': groupedData[today]?.isNotEmpty == true ? groupedData[today]!.first : null,
    'tomorrow': groupedData[tomorrow]?.isNotEmpty == true ? groupedData[tomorrow]!.first : null,
    'dayAfterTomorrow': groupedData[dayAfterTomorrow]?.isNotEmpty == true ? groupedData[dayAfterTomorrow]!.first : null,
  };
}

//grouped date time data
Map<String, List<OpenWeatherListModel>> groupWeatherByDay(List<OpenWeatherListModel?>? dataList) {
  Map<String, List<OpenWeatherListModel>> groupedData = {};

  if (dataList == null || dataList.isEmpty) {
    return groupedData;
  }

  for (var weatherItem in dataList) {
    if (weatherItem == null) continue;

    // Parse the Unix timestamp to DateTime
    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(weatherItem.dt! * 1000);
    String day = DateFormat('yyyy-MM-dd').format(dateTime);

    // Group data by day
    if (!groupedData.containsKey(day)) {
      groupedData[day] = [];
    }
    groupedData[day]!.add(weatherItem);
  }

  return groupedData;
}

String getDayOfWeek(String dateString) {

  DateTime date = DateTime.parse(dateString);

  String dayOfWeek = DateFormat('EEEE').format(date);

  return dayOfWeek;
}