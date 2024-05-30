import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


import 'package:google_maps_flutter_example/utills/utills.dart';

class MapExample extends StatefulWidget {
  const MapExample({super.key});

  @override
  State<MapExample> createState() => _MapExampleState();
}

class _MapExampleState extends State<MapExample> {
  LatLng mylatlong = const LatLng(26.850000, 80.949997);
  String address = 'Lucknow';

  setMarker(LatLng value) async {
    mylatlong = value;

    List<Placemark> result =
        await placemarkFromCoordinates(value.latitude, value.longitude);

    if (result.isNotEmpty) {
      address =
          '${result[0].name}, ${result[0].locality} ${result[0].administrativeArea}';
    }

    setState(() {});
    Utils.toastMessage('📍$address');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(target: mylatlong, zoom: 12),
        markers: {
          Marker(
              infoWindow: InfoWindow(title: address),
              position: mylatlong,
              draggable: true,
              markerId: const MarkerId('1'),
              onDragEnd: (value) {
                log(value.toString(), name: 'value');
                setMarker(value);
              }),
        },
        onTap: (value) {
          setMarker(value);
        },
      ),
    );
  }
}
