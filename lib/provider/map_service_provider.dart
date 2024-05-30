import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter_example/models/map_service_model.dart';
import 'package:google_maps_flutter_example/repositry/service_repo.dart';

class MapProvider extends ChangeNotifier {
  MapServicesRepo repo = MapServicesRepo();
  List<MapServiceModel> homeMapList = [];
  double _radius = 0.0;
  double get getTeamName => _radius;
  set setRadius(value) => _radius = value;

  /// MAP Provider Calling baserepo with api
  Future<int> getMapService(
    int page,
    int perpage,
    double radius,
  ) async {
    try {
      final response = await repo.mapApi(perpage, page, radius);
      log(response.toString(), name: 'response:getMapResponse');
      if (response['status_code'] == 200) {
        List<MapServiceModel> tempList = List<MapServiceModel>.from(
          response.map((e) => MapServiceModel.fromJson(e)),
        );
        log(homeMapList.toString(), name: 'temp List');
        page == 1 ? homeMapList = tempList : homeMapList += tempList;
        notifyListeners();
        return tempList.length;
      }
    } catch (e, s) {
      log('$e', name: 'Error:getMapApi', stackTrace: s);
    }
    return 0;
  }
}
