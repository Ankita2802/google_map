import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_flutter_example/utills/utills.dart';

class MapContaine extends StatefulWidget {
  const MapContaine({super.key});

  @override
  State<MapContaine> createState() => _MapContaineState();
}

class _MapContaineState extends State<MapContaine> {
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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.all(15.0),
      height: height * 0.200,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: GoogleMap(
        zoomGesturesEnabled: true,
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
            },
          ),
        },
        onTap: (value) {
          setMarker(value);
        },
      ),
    );
  }
}
