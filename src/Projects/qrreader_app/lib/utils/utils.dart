import 'package:flutter/material.dart';
import 'package:qrreader_app/models/scan_model.dart';
import 'package:url_launcher/url_launcher.dart';

launchUrlUtils(BuildContext context, ScanModel scan) async {
  final url = Uri.parse(scan.valor);

  print(url);
  if (scan.tipo == 'http') {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }else{
    Navigator.pushNamed(context, 'map', arguments: scan);
  }
}
