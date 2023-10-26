import 'package:final_630710332/models/condition.dart';

class Environment {
  final String city;
  final String country;
  final String lastUpdated;
  final double tempC;
  final double tempF;
  final double feelsLikeC;
  final double feelsLiskeF;
  final double windKph;
  final double windMph;
  final double humidity;
  final double uv;
  final List<Condition> condition;

  Environment({
    required this.city,
    required this.country,
    required this.lastUpdated,
    required this.tempC,
    required this.tempF,
    required this.feelsLikeC,
    required this.feelsLiskeF,
    required this.windKph,
    required this.windMph,
    required this.humidity,
    required this.uv,
    required this.condition,
  });

  factory Environment.fromJson(Map<String, dynamic> json) {
    List<Condition> condition = json['condition'].map<Condition>((item) => Condition.fromJson(item)).toList();

    return Environment(
        city: json['city'],
        country: json['country'],
        lastUpdated: json['lastUpdated'],
        tempC: json['tempC'],
        tempF: json['tempF'],
        feelsLikeC: json['feelsLikeC'],
        feelsLiskeF: json['feelsLiskeF'],
        windKph: json['windKph'],
        windMph: json['windMph'],
        humidity: json['humidity'],
        uv: json['uv'],
        condition: condition
    );
  }

}
