import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mauritius Hotels Map',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mauritius Hotels'),
        ),
        body: MapWidget(),
      ),
    );
  }
}

class MapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: LatLng(-20.2500, 57.5000),
        zoom: 10.0,
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
          subdomains: ['a', 'b', 'c'],
        ),
        MarkerLayer(
          markers: [
            Marker(
              width: 80.0,
              height: 80.0,
              point: LatLng(-20.2580, 57.5910),
              builder: (context) => IconButton(
                icon: Icon(Icons.hotel),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('The Oberoi Beach Resort, Mauritius'),
                        content: Text('Turtle Bay, Balaclava, 20108'),
                      );
                    },
                  );
                },
              ),
            ),
            Marker(
              width: 80.0,
              height: 80.0,
              point: LatLng(-20.3287, 57.5723),
              builder: (context) => IconButton(
                icon: Icon(Icons.hotel),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text(
                            'InterContinental Mauritius Resort Balaclava Fort'),
                        content: Text(
                            'Balaclava Fort, Coastal Road, Balaclava, 20108'),
                      );
                    },
                  );
                },
              ),
            ),
            Marker(
              width: 80.0,
              height: 80.0,
              point: LatLng(-20.2564, 57.6034),
              builder: (context) => IconButton(
                icon: Icon(Icons.hotel),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text(
                            'The Westin Turtle Bay Resort & Spa, Mauritius'),
                        content: Text('Balaclava, Turtle Bay, 230'),
                      );
                    },
                  );
                },
              ),
            ),
            Marker(
              width: 80.0,
              height: 80.0,
              point: LatLng(-20.4075, 57.3684),
              builder: (context) => IconButton(
                icon: Icon(Icons.hotel),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Shanti Maurice Resort & Spa'),
                        content: Text(
                            'Riviere des Galets, St Felix, Chemin Grenier, Mauritius'),
                      );
                    },
                  );
                },
              ),
            ),
            Marker(
              width: 80.0,
              height: 80.0,
              point: LatLng(-20.1343, 57.5078),
              builder: (context) => IconButton(
                icon: Icon(Icons.hotel),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Anantara Iko Mauritius Resort & Villas'),
                        content: Text('Coastal Road, Le Chaland, Mauritius'),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
