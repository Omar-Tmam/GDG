import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:weather/models/weather_model.dart';
import 'package:weather/services/weather_services.dart';

part 'get_weather_state.dart';

class GetWeatherCubit extends Cubit<GetWeatherState> {
  late WeatherModel weatherModel;
  GetWeatherCubit() : super(GetWeatherInitial());
  void getWeather({required String cityName}) async {
    emit(GetWeatherLoading());
    try {
      weatherModel =
          await WeatherServices(Dio()).getCurrentWeather(cityName: cityName);
      emit(GetWeatherSuccess());
    } on Exception {
      emit(GetWeatherFailure());
    }
  }
}
