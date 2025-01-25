
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_weather/api/api_key.dart';
import 'package:open_weather/model/open_weather_model.dart';
import 'package:open_weather/screen/cubit/weather_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String city = 'Nairobi';
  @override
  void initState() {
    super.initState();
    weatherForecast();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocBuilder<WeatherCubit,WeatherState>(
                  builder: (context,state){
                    if(state is WeatherLoading){
                      return CircularProgressIndicator.adaptive();
                    }

                    if(state is WeatherFail){
                      return Center(
                        child: Text("Sorry There seems to be an error please reload this page"),
                      );
                    }

                    if(state is WeatherLoaded){
                      OpenWeatherModel data = state.data;

                    }
                return SizedBox.shrink();
              }),
            ],
          )
      ),
    );
  }
  void weatherForecast(){
    Map<String,dynamic>data = {
      "q":city,
      "appid":apiKey,
    };
    BlocProvider.of<WeatherCubit>(context).fetchWeatherData(data);
  }
}
