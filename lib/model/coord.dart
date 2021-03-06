class Coord {
  final double lon;
  final double lat;

  Coord({required this.lon, required this.lat});

  factory Coord.fromJson(dynamic json) {
    if (json == null) {
      return Coord(lon: 0, lat: 0);
    }

    return Coord(lon: json['lon'], lat: json['lat']);
  }
}
