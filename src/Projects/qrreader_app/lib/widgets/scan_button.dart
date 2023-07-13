import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:provider/provider.dart';
import 'package:qrreader_app/services/scan_list_provider.dart';
import 'package:qrreader_app/utils/utils.dart';

class ScanBotton extends StatelessWidget {
  const ScanBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.filter_center_focus),
      onPressed: () async {
        String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
            "#3d8b3f", 'Cancelar', false, ScanMode.QR);
        if (barcodeScanRes == '-1') return;


        final scanListProviders = Provider.of<ScanListProvider>(context, listen: false);
        final scan = await scanListProviders.nuevoScan(barcodeScanRes);
        launchUrlUtils(context, scan);
      },
    );
  }
}
