
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubit/get_weather_cubit.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (value) {
        BlocProvider.of<GetWeatherCubit>(context).getWeather(cityName: value);
      },
      style: TextStyle(
        color: Colors.black,
      ),
      cursorColor: Colors.blue,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        filled: true,
        fillColor: Colors.white,
        suffixIcon: Icon(
          Icons.search,
          color: Colors.black,
        ),
        hintText: 'City Name',
        hintStyle: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.blue,
            width: 2,
          ),
        ),
      ),
    );
  }
}