// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:http/http.dart' as http;
import 'package:latlong2/latlong.dart';
import 'dart:convert';
import 'package:nami/presentation/modules/map/location_provider.dart';
import 'package:provider/provider.dart';

class MapView extends StatefulWidget {
  const MapView({Key? key}) : super(key: key);

  @override
  _MapViewState createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
 final MapController _mapController = MapController();
  final TextEditingController _searchController = TextEditingController();

  Future<void> _searchLocation(String query) async {
    final url = Uri.parse('https://nominatim.openstreetmap.org/search?q=$query&format=json&addressdetails=1&limit=1');

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List data = json.decode(response.body);
      if (data.isNotEmpty) {
        final lat = double.parse(data[0]['lat']);
        final lon = double.parse(data[0]['lon']);
        final displayName = data[0]['display_name'];
        context.read<LocationProvider>().updateLocation(LatLng(lat, lon), displayName);
        _mapController.move(LatLng(lat, lon), _mapController.zoom);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('No results found')),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Error fetching location')),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText:'Search for a location',
            suffixIcon: IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                if (_searchController.text.isNotEmpty) {
                  _searchLocation(_searchController.text);
                }
              },
            ),
          ),
          onSubmitted: (value) {
            if (value.isNotEmpty) {
              _searchLocation(value);
            }
          },
        ),
      ),
      body:Consumer<LocationProvider>(
        builder: (context, locationProvider, child) {
          return FlutterMap(
        mapController: _mapController,
        options: MapOptions(
          center:  locationProvider.currentLocation,
          zoom: 13.0,
         onTap: (_, latLng) {
                // When tapped, fetch the address using reverse geocoding and update the provider
                _reverseGeocode(latLng);
              },
        ),
       children: [
          TileLayer(
            urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
            subdomains: const ['a', 'b', 'c'],
          ),
           MarkerLayer(
            markers: [
              Marker(
                width: 80.0,
                height: 80.0,
                point: locationProvider.currentLocation,
                child: const Icon(Icons.location_on, color: Colors.red, size: 40),
              ),
            ],
          ),
        ],
      );
      }
      )
    );
  }
   Future<void> _reverseGeocode(LatLng latLng) async {
    final url = Uri.parse('https://nominatim.openstreetmap.org/reverse?format=json&lat=${latLng.latitude}&lon=${latLng.longitude}&addressdetails=1');

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final displayName = data['display_name'];
      context.read<LocationProvider>().updateLocation(latLng, displayName);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Error fetching location name')),
      );
    }
  }
}
