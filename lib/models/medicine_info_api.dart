import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> fetchData() async {
  final response =
      await http.get(Uri.parse('http://13.127.78.108:3000/medicines'));

  if (response.statusCode == 200) {
    // If the server returns a 200 OK response, parse the JSON
    final data = json.decode(response.body);
    // Process the data here
  } else {
    // If the server did not return a 200 OK response,
    // throw an exception or handle the error as needed
    throw Exception('Failed to load data');
  }
}
