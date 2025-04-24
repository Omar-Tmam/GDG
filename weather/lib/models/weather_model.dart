class WeatherModel {
  final String cityName;
  final String region;
  final String image;
  final String temperature;
  final String condition;
  final String windDirection;
  WeatherModel({
    required this.cityName,
    required this.region,
    required this.image,
    required this.temperature,
    required this.condition,
    required this.windDirection,
  });
  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      cityName: json['location']['name'],
      region: json['location']['country'],
      image: json['current']['condition']['icon'],
      temperature: json['current']['temp_c'].toString(),
      condition: json['current']['condition']['text'],
      windDirection: json['current']['wind_dir'],
    );
  }
}