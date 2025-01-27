import 'package:country_state_city_picker/country_state_city_picker.dart';
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
import 'package:open_weather/utils/custom_alert_dialog.dart';

import '../constants/language_list.dart';
import '../data/model/hive_weather_model.dart';
import '../data/service/hive_service.dart';
import '../utils/connectivity.dart';
import '../utils/date_time_function.dart';
import '../utils/language_substring_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String city = 'Nairobi';
  String lang = '';
  late String countryValue;
  late String stateValue;
  late String cityValue;
  final HiveService _hiveService = HiveService();
  String? selectedLanguage;
  TextEditingController languageSearchController = TextEditingController();
  TextEditingController selectCountryController = TextEditingController();
  List<String> filteredLanguages = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      weatherForecast(lang, city);
    });
    filteredLanguages = languages;
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
                return Column(
                  children: [
                    CustomAlertDialog(
                    title: 'Connection Failed',
                    message: 'No internet connection and no cached data available.', negativeBtnText: 'cancel', onNegativePressed: (){
                  Navigator.pop(context);
                }),
                  ],
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
    String bgImageN = '';
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

    bool isDaytime(int sunrise, int sunset) {
      int currentTime = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      return currentTime >= sunrise && currentTime < sunset;
    }

    int sunrise = data.city?.sunrise ?? 0;
    int sunset = data.city?.sunset ?? 0;

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
          bgImageN = night;
          icons = Icons.cloud;
          break;
        case "Rain":
          bgImage =rainyDay ;
          bgImageN =rainDrops;
          icons = Icons.cloudy_snowing;
          break;
        case "Clear":
          bgImage = clearSky;
          bgImageN = clearNight;
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
                image:isDaytime(sunrise, sunset)? AssetImage(bgImage):AssetImage(bgImageN),
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
                        onTap: (){
                          _showLanguageSelectionModal();
                        },
                        child: Card(
                          color: Colors.transparent,
                          child: Icon(
                              Icons.language,color: Colors.white,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          _showCitySelectionModal();
                        },
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
                                          todayData.weather?.firstOrNull?.description ??
                                              '',
                                          icons!,
                                        ),
                                      // Tomorrow's weather
                                      if (tomorrowData != null)
                                        _buildWeatherRow(
                                          'Tomorrow',
                                          tomorrowData.weather?.firstOrNull?.description ??
                                              '',
                                          icons!,
                                        ),
                                      // Day after tomorrow's weather
                                      if (dayAfterTomorrowData != null)
                                        _buildWeatherRow(
                                          '${thirdDay['day']}',
                                          dayAfterTomorrowData.weather?.firstOrNull?.description ??
                                              '',
                                          icons!,
                                        ),
                                      AppButton(
                                        textColor: Colors.white,
                                        backgroundColor: AppColors.mainColor,
                                        borderColor: AppColors.mainColor,
                                        text: '5-day Forecast',
                                        onClicked: () {
                                          showModalBottomSheet(
                                            context: context,
                                            isScrollControlled: true,
                                            builder: (context) => _buildForecastModalSheet(context, groupedData),
                                          );
                                        },
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
            temp,
            // '$temp°C',
            style: TextStyle(fontSize: 16,color: Colors.white),
          ),

          Icon(weatherCondition,color: Colors.white,),

        ],
      ),
    );
  }

  Widget _buildWeatherModalSheet(String day, String temp, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            day,
            style: TextStyle(fontSize: 16,color: Colors.black),
          ),

          Text(
            temp,
            // '$temp°C',
            style: TextStyle(fontSize: 16,color: Colors.black),
          ),

          Text(
            temp,
            // '$temp°C',
            style: TextStyle(fontSize: 16,color: Colors.black),
          ),

        ],
      ),
    );
  }

  Widget _buildForecastModalSheet(BuildContext context, Map<String, List<OpenWeatherListModel>> groupedData) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '5-day Forecast',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          Expanded(
            child: ListView(
              children: groupedData.entries.map((entry) {
                return _buildWeatherModalSheet(
                  getDayOfWeek(entry.key),
                  entry.value.first.weather?.firstOrNull?.description ?? '',
                  entry.value.first.weather?.firstOrNull?.icon ?? '', // Replace with appropriate icon
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget selectCity(){
    return Column(
      children: [
        SelectState(
          onCountryChanged: (value) {
            setState(() {
              countryValue = value;
            });
          },
          onStateChanged:(value) {
            setState(() {
              stateValue = value;
            });
          },
          onCityChanged:(value) {
            setState(() {
              cityValue = value;
            });
          },

        ),
        InkWell(
          onTap:(){
            setState(() {
              city = cityValue;
            });
            weatherForecast(lang,city);
            print('country selected is $countryValue');
            print('country selected is $stateValue');
            print('country selected is $cityValue');
          },
          child: Text(' Check')
        )
      ],
    );
  }

  void weatherForecast(String lang,String city) {
    Map<String, dynamic> data = {
      "q": city,
      'lang': lang,
      'units': 'metric',
      "appid": apiKey,
    };
    BlocProvider.of<WeatherCubit>(context).fetchWeatherData(data);
  }

  void _showLanguageSelectionModal() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Dropdown for language selection
                    DropdownButton<String>(
                      value: selectedLanguage,
                      hint: Text("Select a language"),
                      isExpanded: true,
                      items: filteredLanguages.map((String language) {
                        return DropdownMenuItem<String>(
                          value: language,
                          child: Text(language),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedLanguage = newValue;
                          lang = extractLanguageCode(newValue!);
                        });
                      },
                    ),
                    SizedBox(height: 16),
                    // Buttons at the bottom
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context); // Close the bottom sheet
                            weatherForecast(lang,city);
                          },
                          child: Text("Search"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context); // Close the bottom sheet
                          },
                          child: Text("Cancel"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  void _showCitySelectionModal() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: SizedBox(
                height: 250,
                child: selectCity(),
              ),
            );
          },
        );
      },
    );
  }


}
