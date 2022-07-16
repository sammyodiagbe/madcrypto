import "package:http/http.dart" as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppBrain {
  Future<String> getData(String cryptoId, String currencyId) async {
    try {
      http.Response response = await http.get(Uri.parse(
          'https://rest.coinapi.io/v1/exchangerate/$cryptoId/$currencyId?apikey=${dotenv.env['coinapi_api']}'));

      return response.body;
    } catch (error) {
      print(error);
    }
    return 'Not found';
  }
}
