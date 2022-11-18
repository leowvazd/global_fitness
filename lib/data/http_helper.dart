import 'package:http/http.dart' as http;

class HttpHelper {
  // https://api.openweathermap.org/data/2.5/weather?q=Curitiba&appid=f47c3ec4d53768ffc581e4345b99de19

  final String authority = 'api.openweathermap.org';
  final String path = 'data/2.5/weather';
  final String apiKey = 'f47c3ec4d53768ffc581e4345b99de19';

  Future<String> getWeather(String location) async {
    Map<String, dynamic> parameters = {'q': location, 'appId': apiKey};
    Uri uri = Uri.http(authority, path, parameters);
    http.Response result = await http.get(uri);
    return result.body;
  }
}
