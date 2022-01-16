import 'package:weather_app/model/clouds.dart';
import 'package:weather_app/model/coord.dart';
import 'package:weather_app/model/main_weather.dart';
import 'package:weather_app/model/sys.dart';
import 'package:weather_app/model/weather.dart';
import 'package:weather_app/model/wind.dart';

class CurrentWeatherData {
  final Coord coord;
  final List<Weather> weather;
  final String base;
  final MainWeather main;
  final int visibility;
  final Wind wind;
  final Clouds clouds;
  final Sys sys;
  final int dt;
  final int timezone;
  final int id;
  final String name;
  final int cod;

  CurrentWeatherData(
      {required this.coord,
      required this.weather,
      required this.base,
      required this.main,
      required this.visibility,
      required this.wind,
      required this.clouds,
      required this.sys,
      required this.dt,
      required this.timezone,
      required this.id,
      required this.name,
      required this.cod});

  factory CurrentWeatherData.fromJson(dynamic json) {
    if (json == null) {
      // return CurrentWeatherData(
      //     coord: coord,
      //     weather: weather,
      //     base: base,
      //     main: main,
      //     visibility: visibility,
      //     wind: wind,
      //     clouds: clouds,
      //     sys: sys,
      //     dt: dt,
      //     timezone: timezone,
      //     id: id,
      //     name: name,
      //     cod: cod);
    }

    return CurrentWeatherData(
        coord: Coord.fromJson(json['coord']),
        weather: (json['weather'] as List).map((w) => Weather.fromJson(w)).toList(),
        base: json['base'],
        main: MainWeather.fromJson(json['main']),
        visibility: json['visibility'],
        wind: Wind.fromJson(json['wind']),
        clouds: Clouds.fromJson(json['clouds']),
        sys: Sys.fromJson(json),
        dt: json['dt'],
        timezone: json['timezone'],
        id: json['id'],
        name: json['name'],
        cod: json['cod']);
  }
}
