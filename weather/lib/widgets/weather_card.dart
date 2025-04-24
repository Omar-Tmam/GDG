import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubit/get_weather_cubit.dart';
import 'package:weather/widgets/weather_info.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetWeatherCubit, GetWeatherState>(
      builder: (context, state) {
        if (state is GetWeatherLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is GetWeatherFailure) {
          return const Center(
            child: Text(
              'Please enter a valid city name',
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
              ),
            ),
          );
        } else if (state is GetWeatherSuccess) {
          return Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Padding(
              padding: EdgeInsets.all(20.0),
              child: WeatherInfo(),
            ),
          );
        } else {
          return const Center(
            child: Text(
              'Search for a city to get weather info',
              style: TextStyle(fontSize: 18),
            ),
          );
        }
      },
    );
  }
}
