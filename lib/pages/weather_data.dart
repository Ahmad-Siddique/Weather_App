import 'package:flutter/material.dart';

class WeatherData extends StatefulWidget {
  // const WeatherData({ Key? key }) : super(key: key);

  @override
  State<WeatherData> createState() => _WeatherDataState();
}

class _WeatherDataState extends State<WeatherData> {
  String image = '';
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context).settings.arguments;

    print(data['weather_type'].toString());
    setState(() {
      switch (data['weather_type'].toString()) {
        case 'Clouds':
          image = 'cloudy-real.jpg';
          break;
        case 'Thunderstorm':
          image = 'thunderstorm-real.jpg';
          break;
        case 'Drizzle':
          image = 'drizzle-real.jpg';
          break;
        case 'Rain':
          image = 'rainy-real.jpg';
          break;
        case 'Haze':
          image = 'haze-real.jpg';
          break;

        case 'Snow':
          image = 'snow-real.jpg';
          break;
        case 'Mist':
          image = 'mist-real.jpg';
          break;
        case 'Smoke':
          image = 'smoke-real.jpg';
          break;
        case 'Dust':
          image = 'dust-real.jpg';
          break;
        case 'Fog':
          image = 'fog-real.jpg';
          break;
        case 'Sand':
          image = 'sand-real.jpg';
          break;
        case 'Ash':
          image = 'ash-real.jpg';
          break;
        case 'Squall':
          image = 'squall-real.jpg';
          break;
        case 'Tornado':
          image = 'tornado-real.jpg';
          break;
        case 'Clear':
          image = 'clear-real.jpg';
          break;
      }
    });

    @override
    void initState() {
      super.initState();
      print(image);
    }

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/$image'),
          fit: BoxFit.cover,
        )),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    data['name'],
                    style: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Temperature: ' + data['temperature'].toString(),
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                   'Weather Description: ' +
                            data['weather_description'].toString().toUpperCase(),
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent),
                  ),
                  SizedBox(
                    height: 70.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                         'Weather Type: ' +
                            data['weather_type'].toString(),
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                       'Feels Like: ' +
                            data['feel_temp'].toString(),
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                         'Humidity: ' +
                            data['humidity'].toString(),
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Visibility: ' +
                            data['visibility'].toString(),
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                      Text(
                       'Wind Speed: ' +
                            data['windspeed'].toString(),
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Clouds: ' +
                            data['clouds'].toString(),
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent),
                      ),
                    ],
                  ),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
