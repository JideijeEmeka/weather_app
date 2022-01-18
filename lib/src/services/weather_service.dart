import 'package:weather_app/model/current_weather_data.dart';
import 'package:weather_app/src/api/api_store.dart';

class WeatherService {
  final String city;

  String baseUrl = 'http://api.openweathermap.org/data/2.5';
  String apiKey = 'apiid=YOUR-API-KEY';

  WeatherService({required this.city});

  void getCurrentWeatherData({
    Function()? beforeSend,
    Function(CurrentWeatherData currentWeatherData)? onSuccess,
    Function(dynamic onError)? onError,
  }) {
    final url = '$baseUrl/weather?q=$city&lang=en&$apiKey';
    ApiStore(url: '$url', payload: null).get(
        beforeSend: () => {
              if (beforeSend != null)
                {
                  beforeSend(),
                },
            },
        onSuccess: (data) => {onSuccess!(CurrentWeatherData.fromJson(data))},
        onError: (error) => {
              if (onError != null) {print(error), onError(error)}
            });
  }

  void getTopFiveCities({
    Function()? beforeSend,
    Function(dynamic currentWeatherData)? onSuccess,
    Function(dynamic onError)? onError,
  }) {}

  void getFiveDaysThreeHoursForcastData({
    Function()? beforeSend,
    Function(dynamic currentWeatherData)? onSuccess,
    Function(dynamic onError)? onError,
  }) {}
}
