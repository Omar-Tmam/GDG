import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubit/get_weather_cubit.dart';
import 'package:weather/widgets/custom_text_field.dart';
import 'package:weather/widgets/weather_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: BlocProvider(
        
        create: (context) => GetWeatherCubit(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: CustomTextField(),
            ),
            WeatherCard()
          ],
        ),
      ),
    );
  }
}
