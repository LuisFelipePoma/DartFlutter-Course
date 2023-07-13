import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/scan_list_provider.dart';
import '../utils/utils.dart';

class ScanTiles extends StatelessWidget {
  const ScanTiles({super.key, required this.tipo});

  final String tipo;

  @override
  Widget build(BuildContext context) {
    final scanListProvider = Provider.of<ScanListProvider>(context);

    final scans = scanListProvider.scans;
    return Center(
      child: ListView.builder(
        itemCount: scans.length,
        itemBuilder: (_, index) => Dismissible(
          key: UniqueKey(),
          background: Container(
            color: Colors.red,
          ),
          onDismissed: (direction) {
            Provider.of<ScanListProvider>(context, listen: false)
                .borrarPorId(scans[index].id);
          },
          child: ListTile(
            leading: Icon(
              tipo == 'geo' ? Icons.map_outlined : Icons.house_outlined,
              color: Theme.of(context).primaryColor,
            ),
            title: Text(scans[index].valor),
            subtitle: Text(scans[index].id.toString()),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () => launchUrlUtils(context, scans[index]),
          ),
        ),
      ),
    );
  }
}
