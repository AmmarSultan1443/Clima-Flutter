import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';

const apiKey = '98d34afd5f368b1269fcf6f12b9fbffc';
const openWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {

  Future<dynamic> getLocationWeather() async{

    Location location = Location();
    await location.getCurrentPosition();

    NetworkHelper networkHelper = NetworkHelper('$openWeatherMapURL?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric');

    var weatherData = await networkHelper.getData();

    return weatherData;

  }
  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 37) {
      return 'It\'s 🍦 time';
    } else if (temp > 35) {
      return 'Time for shorts and 👕';
    } else if (temp > 20){
      return 'A hoodie is not enough';
    } else if (temp > 10) {
      return 'Wear your jacket';
    } else if (temp > 0) {
      return 'Bring a 🧥 and 🧣';
    } else {
      return 'You\'ll need 🧣 and 🧤';
    }
  }
}
