

import 'package:flutter/material.dart';
import 'package:world_time_projec/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
//import 'package:http/http.dart';


class Loading extends StatefulWidget {
  const Loading({super.key});


  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  Map? data;

  void setupWorldTime() async{
    //World_time instance = World_time(flag: "flang.png", location: "tunisia", url: "Africa/Tunis");
    await data?["instance"].getTime();
    Navigator.pushNamed(context, "/home", arguments: {
      "flag": data?["instance"].flag,
      "location": data?["instance"].location,
      "time": data?["instance"].time,
      "isDayTime": data?["instance"].isDayTime
    });
  }
 @override
  initState() {
    print("initState Called once");
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments as Map;
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: SpinKitWave(
          color: Colors.white,
          size: 50.0,
        )
        ,
      ),
    );
  }
}