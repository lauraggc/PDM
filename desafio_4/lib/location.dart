import 'package:flutter/material.dart';
import 'package:location/location.dart';

class location extends StatefulWidget {
  final Widget child;
  final Function(LocationData?) onLocationUpdate;

  location({required this.child, required this.onLocationUpdate});

  @override
  _locationState createState() => _locationState();
}

class _locationState extends State<location> {
  LocationData? _locationData;
  Location location = Location();

  @override
  void initState() {
    super.initState();
    _getLocation();
  }

  _getLocation() async {
    try {
      var currentLocation = await location.getLocation();
      setState(() {
        _locationData = currentLocation;
        widget.onLocationUpdate(_locationData);
      });
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
