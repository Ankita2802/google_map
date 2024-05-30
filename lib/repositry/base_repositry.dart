import 'dart:developer';

import 'package:google_maps_flutter_example/utills/api_urls.dart';
import 'package:http/http.dart' as http;

class BaseRepository {
  /// For GET request
  Future<http.Response> getHttp({
    required String api,
  }) async {
    final url = ApiUrls.baseURL + api;
    log(url, name: 'getHttp');
    final response = await http.get(
      Uri.parse(url),
    );
    return response;
  }
}
