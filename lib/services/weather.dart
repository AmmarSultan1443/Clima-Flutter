class WeatherModel {
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
