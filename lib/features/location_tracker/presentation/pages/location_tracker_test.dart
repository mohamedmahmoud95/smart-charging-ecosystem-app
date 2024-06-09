import 'package:flutter/material.dart';
import 'package:location/location.dart';

import '../../location_utility_functions/location_permissions_service.dart';
import '../../location_utility_functions/loction_utility_functions.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  final LocationUtilityFunctions _locationService = LocationUtilityFunctions();
  LocationData? _currentLocation;

  @override
  void initState() {
    super.initState();
    _initializeLocationService();
  }

  Future<void> _initializeLocationService() async {
    bool granted = await PermissionService.requestLocationPermission();
    if (granted) {
      await _locationService.initialize();
      _locationService.getLocationUpdates().listen((LocationData locationData) {
        setState(() {
          _currentLocation = locationData;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location Tracker'),
      ),
      body: Center(
        child: _currentLocation == null
            ? CircularProgressIndicator()
            : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Latitude: ${_currentLocation!.latitude}'),
            Text('Longitude: ${_currentLocation!.longitude}'),
          ],
        ),
      ),
    );
  }
}