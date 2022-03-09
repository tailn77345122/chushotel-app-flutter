import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../widget/menu_widget.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({ Key? key }) : super(key: key);

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(
        const Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(10.3317307, 107.0875691),
          infoWindow: InfoWindow(
            title: 'Chu\'s Hotel',
            snippet: '45/20A Thuy Van, Ward 2, Vung Tau City'
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.brown,
        title: const Text('Location'),
        leading: const MenuWidget(),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: CameraPosition(
          target: LatLng(10.3317307, 107.0875691),
          zoom:  15, 
        ),
      ),
    );
  }
}