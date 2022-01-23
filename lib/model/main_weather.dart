class MainWeather {
  final double temp;
  final double feels_like;
  final double temp_min;
  final double temp_max;
  final int pressure;
  final int humidity;

  MainWeather(
      {required this.temp,
      required this.feels_like,
      required this.temp_min,
      required this.temp_max,
      required this.pressure,
      required this.humidity});

  factory MainWeather.fromJson(dynamic json) {
    if (json == null) {
      return MainWeather(
          temp: 0,
          feels_like: 0,
          temp_min: 0,
          temp_max: 0,
          pressure: 0,
          humidity: 0);   
    }
    return MainWeather(
        temp: json['temp'],
        feels_like: double.parse(json['feels_like'].toString()),
        temp_min: json['temp_min'],
        temp_max: json['temp_max'],
        pressure: json['pressure'],
        humidity: json['humidity']);
  }
}
