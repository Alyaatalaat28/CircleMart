import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

class LocationProvider with ChangeNotifier {
  LatLng _currentLocation =const LatLng(30.0444, 31.2357); // Initial position in Cairo, Egypt
  String _locationName = '';

  LatLng get currentLocation => _currentLocation;
  String get locationName => _locationName;

  void updateLocation(LatLng newLocation, String newName) {
    _currentLocation = newLocation;
    _locationName = newName;
    notifyListeners();
  }
}
