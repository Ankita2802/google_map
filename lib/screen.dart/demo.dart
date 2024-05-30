import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';



class MapScreenNew extends StatefulWidget {
  @override
  _MapScreenNewState createState() => _MapScreenNewState();
}

class _MapScreenNewState extends State<MapScreenNew> {
  GoogleMapController? mapController;

  final LatLng _center = const LatLng(37.7749, -122.4194);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Maps in Flutter'),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
        mapType: MapType.normal,
        myLocationEnabled: true,
        compassEnabled: true,
        mapToolbarEnabled: true,
        zoomGesturesEnabled: true,
        scrollGesturesEnabled: true,
        tiltGesturesEnabled: true,
        rotateGesturesEnabled: true,
        markers: Set<Marker>.of([
          Marker(
            markerId: MarkerId('marker_1'),
            position: LatLng(37.7749, -122.4194),
            infoWindow: InfoWindow(
              title: 'San Francisco',
              snippet: 'An interesting city',
            ),
            icon: BitmapDescriptor.defaultMarker,
          ),
        ]),
        polylines: Set<Polyline>.of([
          Polyline(
            polylineId: PolylineId('polyline_1'),
            points: [
              LatLng(37.7749, -122.4194),
              LatLng(37.8044, -122.2711),
            ],
            color: Colors.blue,
            width: 5,
          ),
        ]),
        polygons: Set<Polygon>.of([
          Polygon(
            polygonId: PolygonId('polygon_1'),
            points: [
              LatLng(37.7749, -122.4194),
              LatLng(37.8044, -122.2711),
              LatLng(37.6879, -122.4702),
            ],
            strokeColor: Colors.green,
            fillColor: Colors.green.withOpacity(0.3),
            strokeWidth: 3,
          ),
        ]),
        circles: Set<Circle>.of([
          Circle(
            circleId: CircleId('circle_1'),
            center: LatLng(37.7749, -122.4194),
            radius: 1000,
            strokeColor: Colors.red,
            fillColor: Colors.red.withOpacity(0.3),
            strokeWidth: 3,
          ),
        ]),
      ),
    );
  }
}
