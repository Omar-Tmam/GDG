import 'package:flutter/material.dart';
import 'package:weather/views/home_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Ubuntu',
        scaffoldBackgroundColor: Colors.blue.shade50,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
