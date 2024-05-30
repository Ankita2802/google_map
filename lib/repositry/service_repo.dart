import 'dart:convert';
import 'dart:developer';
import 'package:google_maps_flutter_example/repositry/base_repositry.dart';

class MapServicesRepo extends BaseRepository {
  /// For MAP GET Base Repo
  Future mapApi(
    int perpage,
    int page,
    double radius,
  ) async {
    final params =
        'search-list?customer_id=249&latitude=23.0373625&longitude=72.5609353&page=$page&per_page=$perpage&user_type=user&radius=$radius';
    log(params, name: 'api params');
    final response = await getHttp(
      api: params,
    );
    log(response.body, name: 'getMapResponse');
    return json.decode(response.body);
  }
}
