import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 import 'package:hive/hive.dart';
 import 'package:hive_flutter/hive_flutter.dart';
import 'package:open_weather/network/api_call.dart';
import 'package:open_weather/screen/cubit/weather_cubit.dart';
import 'package:open_weather/screen/home_page.dart';
import 'package:open_weather/utils/connectivity.dart';
import 'package:open_weather/utils/custom_alert_dialog.dart';
import 'package:open_weather/utils/register_adapters.dart';
import 'data/model/hive_weather_model.dart';


void main() async {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
    runApp(ErrorWidgetClass(details));
  };
   await Hive.initFlutter();
    registerAdapters();
   await Hive.openBox<HiveOpenWeatherModel>('weatherBox');
  runApp(const MyApp());
}

class ErrorWidgetClass extends StatelessWidget {
  final FlutterErrorDetails errorDetails;
  const ErrorWidgetClass(this.errorDetails, {super.key, });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Error Widget',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: CustomAlertDialog(
          title: 'Connection Failed',
          message:
          'Sorry, there was an error while loading the app, please ensure that you are connected to the internet and restart your application again',
          ),
      );
  }
}


class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>WeatherCubit(ApiService())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
