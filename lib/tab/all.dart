import 'package:flutter/material.dart';
import 'package:spot_match/google_maps.dart';

class All extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GoogleMaps(),
    );
  }
}