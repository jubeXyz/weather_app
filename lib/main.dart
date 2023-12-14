import 'package:flutter/material.dart'; 
import 'package:weather_icons/weather_icons.dart';

enum WeatherCondition {
  sunny,
  cloudy,
  rainy,
  stormy,
}

class WeatherData {
  String city;
  int temperature;
  WeatherCondition condition;

  WeatherData({required this.city, required this.temperature, required this.condition});
}

 void main() {
   runApp(const MyApp());
 }

 class MyApp extends StatelessWidget {
   const MyApp({super.key}); 


   @override
   Widget build(BuildContext context) {
     return const MaterialApp(
      debugShowCheckedModeBanner: false,
       home: WeatherApp(),
     );
   }
 }

 class WeatherApp extends StatelessWidget {
   const WeatherApp({super.key});

   @override
   Widget build(BuildContext context) {
    WeatherData weatherInfo = WeatherData(
      city: "Hamburg",
      temperature: 4,
      condition: WeatherCondition.stormy,
      );

     AssetImage backgroundImage = _getBackgroundImage(weatherInfo.condition);
     IconData weatherIcon = _getWeatherIcon(weatherInfo.condition);
     Color weatherColor = _getWeatherColor(weatherInfo.condition);

     return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 0, 68, 89),
        title: const Text(
          "Superkalifragilistikexpialigetische \n Wetter-App",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(255, 218, 205, 174),
            fontWeight: FontWeight.bold,
            fontSize: 14,
            ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: backgroundImage,
            fit:BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            weatherIcon,
          color: weatherColor,
          size: 60,
          ),
          const SizedBox(height: 20),
          Text(
            weatherInfo.city,
            style: TextStyle(
          color: weatherColor,
          fontSize: 48,
          fontWeight: FontWeight.bold,
          ),
          ),
          Text(
            "${weatherInfo.temperature}°C",
            style: TextStyle(
          color: weatherColor,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          ),
          ),
          Text(
            _getWeatherConditionText(weatherInfo.condition),
            style: TextStyle(
          color: weatherColor,
          fontSize: 24,
          fontWeight: FontWeight.w400,
          ),
          ),
        ],
        ),
        ),
      ),
    );
   }
   String
   _getWeatherConditionText(WeatherCondition condition){
    switch (condition){
      case WeatherCondition.sunny:
      return "Sonnig";
      case WeatherCondition.cloudy:
      return "Bewölkt";
      case WeatherCondition.rainy:
      return "Regnerisch";
      case WeatherCondition.stormy:
      return "Stürmisch";
    }
   }
   AssetImage
   _getBackgroundImage(WeatherCondition condition){
      switch (condition){
        case WeatherCondition.sunny:
          return const AssetImage('/Users/julibebensee/Code/weather_app/lib/assets/sunny.jpg');
        case WeatherCondition.cloudy:
          return const AssetImage('/Users/julibebensee/Code/weather_app/lib/assets/aiclouds_soft_colors.jpg');
        case WeatherCondition.rainy:
          return const AssetImage('/Users/julibebensee/Code/weather_app/lib/assets/rainy.jpg');
        case WeatherCondition.stormy:
          return const AssetImage('/Users/julibebensee/Code/weather_app/lib/assets/stormy.jpg');
      }
   }
   IconData
   _getWeatherIcon(WeatherCondition condition){
    switch (condition){
    case WeatherCondition.sunny:
          return WeatherIcons.day_sunny;
    case WeatherCondition.cloudy:
          return WeatherIcons.cloudy;
    case WeatherCondition.rainy:
          return WeatherIcons.day_rain;
    case WeatherCondition.stormy:
          return WeatherIcons.strong_wind;
   }
 }
 Color
 _getWeatherColor(WeatherCondition condition){
      switch (condition){
    case WeatherCondition.sunny:
          return const Color.fromARGB(255, 7, 127, 87);
    case WeatherCondition.cloudy:
          return const Color.fromARGB(255, 15, 107, 137);
    case WeatherCondition.rainy:
          return const Color.fromARGB(255, 252, 195, 62);
    case WeatherCondition.stormy:
          return const Color.fromARGB(255, 185, 178, 244);
   }
 }
 }


 