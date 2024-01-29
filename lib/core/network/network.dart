import 'dart:convert';

import 'package:http/http.dart' as http;
import '../shared_preference/sharedPrefarance_service.dart';

class NetworkService {
  String token = SharedPreferencesService.getString('token');
  late var response;

  Future<http.Response> _makeRequest(
      http.Client client, String url, dynamic body) async {
    if (token.isEmpty) {
      response = await client.post(
        Uri.parse(url),
        //headers: {'Authorization': 'Bearer $token'},
        body: body,
      );
    } else {
      response = await client.post(
        Uri.parse(url),
        headers: {'Authorization': 'Bearer $token'},
        body: body,
      );
    }
    //   if (response.statusCode == 200) {
    //     return _makeRequest(client, url, body);
    // }

    return response;
  }

  Future<http.Response> _makeRequestGet(
    http.Client client,
    String url,
  ) async {
    String token = SharedPreferencesService.getString('token');
    print('This is token: $token');
    response = await client.get(
      Uri.parse(url),
      headers: {'Authorization': 'Bearer $token'},
    );
    print("Network class: ${response}");
    return response;
  }

  Future<http.Response> post(String endpoint, dynamic body) async {
    final client = http.Client();
    final url = endpoint;
    try {
      return await _makeRequest(client, url, body);
    } finally {
      client.close();
    }
  }

  Future<http.Response> get(String endpoint) async {
    print('get');
    final client = http.Client();
    final url = endpoint;

    try {
      return await _makeRequestGet(client, url);
    } finally {
      client.close();
    }
  }

  // Add other HTTP methods as needed (GET, PUT, DELETE, etc.)

  // dynamic returnResponse(http.Response response) {
  //     switch (response.statusCode) {
  //       case 200:
  //         dynamic responseJson = jsonDecode(response.body);
  //         return responseJson;
  //       case 400:
  //         throw '400 issue occurred';
  //       case 401:
  //         throw '401 issue occurred';
  //       case 403:
  //         throw '403 issue occurred';
  //       case 404:
  //         throw '404 issue occurred';
  //       case 500:
  //         throw '500 issue occurred';
  //       default:
  //         throw 'Error occurred while communication with server with status code : ${response.statusCode}';
  //     }
  //   }
}
