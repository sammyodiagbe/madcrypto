import "package:http/http.dart" as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppBrain {
  Future<String> getData(String cryptoId, String currencyId) async {
    try {
      Uri url = Uri.parse(
          'https://rest.coinapi.io/v1/exchangerate/$cryptoId/$currencyId?apikey=${dotenv.env['coinapi_key']}');
      http.Response response = await http.get(url);

      return response.body;
    } catch (error) {
      print(error);
    }
    return 'Not found';
  }
}
