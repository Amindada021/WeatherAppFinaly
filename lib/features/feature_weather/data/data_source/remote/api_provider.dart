


import 'package:dio/dio.dart';
import 'package:weather_app/common/utils/constants.dart';

class ApiProvider{
 var apiKey = Constants.apiKey;
 var baseUrl = Constants.baseUrl;

//current weather api call
Future<dynamic>  callCurrentWeather(String cityName) async {
   var response =await Dio().get("$baseUrl/data/2.5/weather?q=$cityName&appid=$apiKey&units=metric");

   return response;
 }

}