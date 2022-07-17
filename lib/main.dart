import 'package:flutter/material.dart';
import 'package:weather/pages/location.dart';
import 'package:weather/pages/loadingscreen.dart';
import 'package:weather/pages/weather_data.dart';
void main() {
  runApp(MaterialApp(
    
    routes: {
      '/':(context)=>LoadingScreen(),
      '/location':(context)=>location(),
      '/weather':(context)=>WeatherData(),
    },
  ));
}

