import 'package:flutter/material.dart';
import 'package:weather/services/weather.dart';
class location extends StatefulWidget {
  // const location({ Key? key }) : super(key: key);

  @override
  State<location> createState() => _locationState();
}

class _locationState extends State<location> {

  List<Weather> locations=[
    Weather(name:'Islamabad'),
    Weather(name:'Rawalpindi'),
    Weather(name:'Lahore'),
    Weather(name:'Peshawar'),
    Weather(name:'Karachi'),
    Weather(name:'Multan'),
    Weather(name:'Hyderabad'),
    Weather(name:'Quetta'),
    Weather(name:'Skardu'),
    Weather(name:'Abbottabad'),
    Weather(name:'Faisalabad'),
    Weather(name:'Sialkot'),
    Weather(name:'Sargodha'),
    Weather(name:'Bahawalpur'),

  ];


  void givinglocation(index) async {
    
    Weather instance=locations[index];
    
    await instance.gettemperature();
    print(instance.feel_temp);




    await Navigator.pushNamed(context, '/weather',arguments: {
      'name':instance.name,
      'weather_type':instance.weather_type,
      'weather_description':instance.weather_description,
      'temperature':instance.temperature,
      'feel_temp':instance.feel_temp,
      'humidity':instance.humidity,
      'visibility':instance.visibility,
      'windspeed':instance.windspeed,
      'clouds':instance.clouds,



    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Location'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,

        
      ),
      body: ListView.builder(
        itemCount: locations.length
        ,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              child: ListTile(
                onTap: (){
                  givinglocation(index);
                },
                title: Text(locations[index].name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent
                ),
                ),
              ),
            ),
          );
        },
        )

    );
  }
}