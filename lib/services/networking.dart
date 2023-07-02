import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);
  final String url;
  Future getData() async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      // API call succeeded

      final data = jsonDecode(response.body);
      return data;
    } else {
      // API call failed
      print('Failed to fetch data: ${response.statusCode}');
    }
  }
}
