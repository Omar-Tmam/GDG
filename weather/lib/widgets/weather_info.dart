import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubit/get_weather_cubit.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '${BlocProvider.of<GetWeatherCubit>(context).weatherModel.region}, ${BlocProvider.of<GetWeatherCubit>(context).weatherModel.cityName}',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Image.network(
          'https:${BlocProvider.of<GetWeatherCubit>(context).weatherModel.image}',
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.4,
          fit: BoxFit.contain,
        ),
        Text(
          BlocProvider.of<GetWeatherCubit>(context).weatherModel.temperature,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          BlocProvider.of<GetWeatherCubit>(context).weatherModel.condition,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        Text(
          BlocProvider.of<GetWeatherCubit>(context).weatherModel.windDirection,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
