import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:open_weather/api/api_key.dart';
import 'package:open_weather/constants/constant.dart';
import 'package:open_weather/model/open_weather_model.dart';
import 'package:open_weather/screen/cubit/weather_cubit.dart';
import 'package:open_weather/utils/app_button.dart';
import 'package:open_weather/utils/app_color.dart';

import '../data/model/hive_weather_model.dart';
import '../data/service/hive_service.dart';
import '../utils/date_time_function.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String city = 'ruiru';
  String lang = '';
  final HiveService _hiveService = HiveService();

  @override
  void initState() {
    super.initState();
    weatherForecast();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocBuilder<WeatherCubit, WeatherState>(builder: (context, state) {
            if (state is WeatherLoading) {
              return Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }

            if (state is WeatherFail)  {
              // Try to load cached data from Hive
              final cachedData =  _hiveService.getWeatherData();
              if (cachedData != null) {
                return _buildWeatherUI(cachedData.toOpenWeatherModel());
              } else {
                return Center(
                  child: Text("No internet connection and no cached data available."),
                );
              }
            }

            if (state is WeatherLoaded) {
              OpenWeatherModel data = state.data;

              _hiveService.saveWeatherData(HiveOpenWeatherModel.fromOpenWeather(data));

              return _buildWeatherUI(data);

              }
                  return SizedBox.shrink();
            }),
        ],
      ),
    );
  }

  Widget _buildWeatherUI(OpenWeatherModel data){

    List<OpenWeatherListModel?>? dataList = data.list;
    String? weatherDescription;
    String? weatherMain;
    String weatherIcon = '';
    String bgImage = '';
    IconData?icons;
    Color bgColor = Colors.white ;

    Map<String, List<OpenWeatherListModel>> groupedData =
    groupWeatherByDay(dataList);
    Map<String, OpenWeatherListModel?> firstEntries =
    getFirstEntryForNextThreeDays(groupedData);

    OpenWeatherListModel? todayData = firstEntries['today'];
    OpenWeatherListModel? tomorrowData = firstEntries['tomorrow'];
    OpenWeatherListModel? dayAfterTomorrowData =
    firstEntries['dayAfterTomorrow'];

    Map<String, String> thirdDay = convertUnixTimestamp(dayAfterTomorrowData!.dt!);

    debugPrint("HERE IS THE DAYS DATA '${firstEntries}' ");

    if (dataList != null) {
      for (var weatherItem in dataList) {
        List<OpenWeatherListWeatherModel?>? weatherDetails =
            weatherItem?.weather;
        if (weatherDetails != null) {
          for (var weatherDetail in weatherDetails) {
            if (weatherDetail != null) {
              weatherDescription = weatherDetail.description ?? '';
              weatherMain = weatherDetail.main ?? '';
            }
          }
        }
      }
      switch (weatherMain) {
        case "Clouds":
          bgImage = brokenClouds;
          icons = Icons.cloud;
          break;
        case "Rain":
          bgImage = rainDrops;
          icons = Icons.cloudy_snowing;
          break;
        case "Clear":
          bgImage = clearSky;
          icons = Icons.sunny;
          break;
        default:
          bgImage = day;
          break;
      }
    }
    double? temperature;
    //fl chart
    List<FlSpot> spots = [];
    if (dataList != null) {
      for (var i = 0; i < dataList.length; i++) {
        var weatherItem = dataList[i];
        if (weatherItem != null) {
          double x = i.toDouble();
          double y = weatherItem.main?.temp ?? 0.0;
          temperature = y;

          spots.add(FlSpot(x, y));
        }
      }
    }

    return Expanded(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(bgImage),
                fit: BoxFit.fitHeight,
              )),
          child: Padding(
            padding: const EdgeInsets.only(top: 48.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    spacing: 5,
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: Card(
                          color: Colors.transparent,
                          child: Icon(
                              Icons.language,color: Colors.white,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Card(
                          color: Colors.transparent,
                          child: Icon(
                              Icons.search,color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                         horizontal: 15),
                    child: SafeArea(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 10,
                          children: [
                            Card(
                              color: Colors.transparent,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Card(
                                      color: Colors.transparent,
                                      child: Text("${data.city?.name ?? ''}, ",style: TextStyle(fontSize: 18,color: bgColor,fontWeight: FontWeight.w600,),)),
                                  Card(
                                      color: Colors.transparent,
                                      child: Text(data.city?.country ?? '',style: TextStyle(fontSize: 18,color: bgColor,fontWeight: FontWeight.w600,),)),
                                ],
                              ),
                            ),
                            Card(
                              color: Colors.transparent,
                              child: Text(
                                '${dataList?[0]?.main?.temp?.floor() ?? ''}º',
                                style: TextStyle(
                                    fontSize: 50, fontWeight: FontWeight.w700,color: bgColor),
                              ),
                            ),
                            Card(
                              color: Colors.transparent,
                              child: Text(
                                '$weatherMain ${dataList?[0]?.main?.tempMax ?? ''} / ${dataList?[0]?.main?.tempMin ?? ''}',
                                style: TextStyle(fontSize: 18,color: bgColor,fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            GestureDetector(
                              onTap: (){},
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: Colors.transparent,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    spacing: 10,
                                    children: [
                                      SizedBox(height: 10,),
                                      Text('5-day Forecast',style: TextStyle(color: bgColor,fontSize: 18,fontWeight: FontWeight.w600),),

                                      if (todayData != null)
                                        _buildWeatherRow(
                                          'Today',
                                          todayData.main?.temp?.toStringAsFixed(1) ??
                                              '',
                                          icons!,
                                        ),
                                      // Tomorrow's weather
                                      if (tomorrowData != null)
                                        _buildWeatherRow(
                                          'Tomorrow',
                                          tomorrowData.main?.temp
                                              ?.toStringAsFixed(1) ??
                                              '',
                                          icons!,
                                        ),
                                      // Day after tomorrow's weather
                                      if (dayAfterTomorrowData != null)
                                        _buildWeatherRow(
                                          '${thirdDay['day']}',
                                          dayAfterTomorrowData.main?.temp
                                              ?.toStringAsFixed(1) ??
                                              '',
                                          icons!,
                                        ),
                                      AppButton(
                                        textColor: Colors.white,
                                        backgroundColor: AppColors.mainColor,
                                        borderColor: AppColors.mainColor,
                                        text: '5-day Forecast',
                                        onClicked: () {},
                                      ),
                                      SizedBox(height: 10,)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              color: Colors.transparent,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('24-hour Forecast',style: TextStyle(color: bgColor,fontSize: 18,fontWeight: FontWeight.w600),),

                                  SizedBox(
                                    height: 130,
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: SizedBox(
                                          width: spots.length * 100.0, // Adjust width based on data points
                                          child: LineChart(
                                            duration: const Duration(milliseconds: 86400000),
                                            LineChartData(
                                              // minX: 0,
                                                maxX: spots.length.toDouble() - 1,
                                                // minY: 0,
                                                //  maxY: 0, // keeping this at 0 because I don't need a y axis range
                                                lineBarsData: [
                                                  LineChartBarData(
                                                    spots: spots,
                                                    isCurved: true,
                                                    color: Colors.blue,
                                                    dotData: FlDotData(show: false),
                                                    belowBarData: BarAreaData(show: false),
                                                  ),
                                                ],
                                                titlesData: FlTitlesData(
                                                  bottomTitles: AxisTitles(
                                                    sideTitles: SideTitles(
                                                      showTitles: true,
                                                      getTitlesWidget: (value, meta) {
                                                        // displaying time labels on the x-axis
                                                        if (value.toInt() < dataList!.length) {
                                                          DateTime dateTime = DateTime
                                                              .fromMillisecondsSinceEpoch(
                                                              dataList[value.toInt()]!.dt! *
                                                                  1000);
                                                          return Text(
                                                            DateFormat('HH:mm').format(dateTime),style: TextStyle(color: bgColor,fontWeight: FontWeight.w500,),);
                                                        }
                                                        return Text('');
                                                      },
                                                    ),
                                                  ),
                                                  leftTitles: AxisTitles(
                                                    sideTitles: SideTitles(
                                                      showTitles: false,
                                                    ),
                                                  ),
                                                  rightTitles: AxisTitles(
                                                    sideTitles: SideTitles(
                                                      showTitles: false,
                                                      getTitlesWidget: (value, meta) {
                                                        return Text('');
                                                      },
                                                    ),
                                                  ),
                                                  topTitles: AxisTitles(
                                                    sideTitles: SideTitles(
                                                      showTitles: true,
                                                      getTitlesWidget: (value, meta) {
                                                        return Text('${double.parse(temperature.toString()).floor()}º',style: TextStyle(color: bgColor,fontWeight: FontWeight.w500,),);
                                                      },
                                                    ),
                                                  ),

                                                ),
                                                gridData: FlGridData(show: false),
                                                borderData: FlBorderData(show: false),
                                                backgroundColor: Colors.transparent
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));

  }

  Widget _buildWeatherRow(String day, String temp, IconData weatherCondition) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            day,
            style: TextStyle(fontSize: 16,color: Colors.white),
          ),
          Text(
            '$temp°C',
            style: TextStyle(fontSize: 16,color: Colors.white),
          ),

           Icon(weatherCondition,color: Colors.white,),

        ],
      ),
    );
  }

  void weatherForecast() {
    Map<String, dynamic> data = {
      "q": city,
      'lang': lang,
      'units': 'metric',
      "appid": apiKey,
    };
    BlocProvider.of<WeatherCubit>(context).fetchWeatherData(data);
  }
}
