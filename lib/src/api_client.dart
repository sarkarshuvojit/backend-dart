import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiClient {
  final http.Client _client;
  String baseUrl;
  
  ApiClient({ this.baseUrl = ""}):_client = http.Client();
  ApiClient.custom(this._client, this.baseUrl); 

  Future<http.Response> get(String path, {Map<String, String>? headers}) async {
    final response = await _client.get(Uri.parse('$baseUrl$path'), headers: headers);
    return _handleResponse(response);
  }

  Future<http.Response> post(String path, {Map<String, String>? headers, dynamic body}) async {
    final response = await _client.post(Uri.parse('$baseUrl$path'), headers: headers, body: jsonEncode(body));
    return _handleResponse(response);
  }

  Future<http.Response> put(String path, {Map<String, String>? headers, dynamic body}) async {
    final response = await _client.put(Uri.parse('$baseUrl$path'), headers: headers, body: jsonEncode(body));
    return _handleResponse(response);
  }

  Future<http.Response> patch(String path, {Map<String, String>? headers, dynamic body}) async {
    final response = await _client.patch(Uri.parse('$baseUrl$path'), headers: headers, body: jsonEncode(body));
    return _handleResponse(response);
  }

  Future<http.Response> delete(String path, {Map<String, String>? headers}) async {
    final response = await _client.delete(Uri.parse('$baseUrl$path'), headers: headers);
    return _handleResponse(response);
  }

  dynamic _handleResponse(http.Response response) {
    final statusCode = response.statusCode;

    if (statusCode >= 200 && statusCode < 300) {
      // Successful response
      return response;
    } else {
      // Handle errors
      throw Exception('Request failed with status: $statusCode\n${response.body}');
    }
  }
}

