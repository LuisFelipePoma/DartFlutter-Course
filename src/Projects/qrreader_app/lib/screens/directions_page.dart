import 'package:flutter/material.dart';
import 'package:qrreader_app/widgets/widgets.dart';

class DirectionsScreen extends StatelessWidget {
  const DirectionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScanTiles(tipo: 'http');
  }
}
