import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:weather_app/model/current_weather_data.dart';
import 'package:weather_app/src/services/weather_service.dart';

class HomeController extends GetxController {
  late String city;
  late String searchText;

  HomeController({required this.city});

  late CurrentWeatherData currentWeatherData;

  @override
  void onInit() {
    initState();
    super.onInit();
  }

  void initState() {
    WeatherService(city: '$city').getCurrentWeatherData(onSuccess: (data) {
      currentWeatherData = data;
      update();
    });
  }
}
