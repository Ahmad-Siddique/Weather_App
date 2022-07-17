import 'package:flutter/material.dart';
import 'package:weather/services/weather.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:async';

class LoadingScreen extends StatefulWidget {
  // const LoadingScreen({ Key? key }) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void holdingscreen() async {
    Timer(Duration(seconds: 2), () {
      // <-- Delay here
      setState(() {
        Navigator.pushNamed(context, '/location'); // <-- Code run after delay
      });
    });
  }

  @override
  void initState() {
    super.initState();
    Weather ww = Weather(name: 'Skardu');
    ww.gettemperature();
    holdingscreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.redAccent,
        body: Center(
          child: SpinKitCubeGrid(
            color: Colors.white,
            size: 80.0,
          ),
        ));
  }
}
