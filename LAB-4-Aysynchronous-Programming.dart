import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> fetchWeatherData(String apiKey, String city) async {
  final apiUrl = 'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey';

  final response = await http.get(Uri.parse(apiUrl));

  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Failed to fetch weather data');
  }
}

void main() async {
  final apiKey = 'YOUR_API_KEY'; // Replace with your OpenWeatherMap API key
  final city = 'London'; // Replace with the desired city

  print('Fetching weather data...');
  try {
    final weatherData = await fetchWeatherData(apiKey, city);
    final temperature = weatherData['main']['temp'];
    final weatherDescription = weatherData['weather'][0]['description'];

    print('Current Temperature in $city: $temperature K');
    print('Weather Conditions in $city: $weatherDescription');
  } catch (e) {
    print('Error: $e');
  }
}