import 'package:flutter/material.dart';
import 'package:world_time_projec/pages/choose_location.dart';
import 'package:world_time_projec/pages/home.dart';
import 'package:world_time_projec/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      '/' : (context) => const Choose_location(),
      '/loading' : (context) => const Loading(),
      '/home' : (context) => Home(),
    },
  ));
}
