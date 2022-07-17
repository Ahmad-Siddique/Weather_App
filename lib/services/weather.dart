

import 'package:http/http.dart';
import 'dart:convert';


class Weather{
  String name;
  String weather_type;
  String weather_description;
  double temperature;
  double feel_temp;
  int humidity;
  int visibility;
  double windspeed;
  int clouds;


  Weather({this.name});


  Future<void> gettemperature() async {
    try{
    Response response = await get("https://api.openweathermap.org/data/2.5/weather?q=$name&appid=98823a073844e892ed2303dda60d3685");
    Map temperature= jsonDecode(response.body);
    // Map temperature = temperature1[0];
    // print(temperature);
    // variable assigning values
   

    // print(temperature['main']['feels_like'].runtimeType);
    // print(temperature['weather'][0]['description'].runtimeType);
    // print(temperature['main']['temp'].runtimeType);
    // print(temperature['wind']['speed'].runtimeType);
    // print(temperature['clouds']['all'].runtimeType);



    this.weather_type=temperature['weather'][0]['main'];
    this.weather_description=temperature['weather'][0]['description'];
    // this.weather_description=typing[1]['description'];
    this.temperature = double.parse((temperature['main']['temp'] - 273.15).toStringAsFixed(2));
    this.feel_temp = double.parse((temperature['main']['feels_like'] - 273.15).toStringAsFixed(2));
    this.humidity=temperature['main']['humidity'];
    this.visibility=temperature['visibility'];
    this.windspeed=double.parse((temperature ['wind']['speed']).toStringAsFixed(2));
    this.clouds=temperature['clouds']['all'];

   

  

    

    }

    catch(e){
      print(e.toString());
    }

  }




}