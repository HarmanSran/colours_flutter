import 'package:colours_flutter/models/dastar.dart';
import 'package:colours_flutter/models/dastar_data.dart';
import 'package:colours_flutter/widgets/dastar_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DastarsGrid extends StatelessWidget {
  const DastarsGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, DastarData dastarData, child) {
        return GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            itemCount: dastarData.dastarCount,
            itemBuilder: (BuildContext context, index) {
              Dastar dastar = dastarData.dastars[index];
              int larhs = dastar.larhs;
              Length length = dastar.length;
              Color colour = dastar.colour;
              return DastarTile(larhs: larhs, length: length, colour: colour);
            });
      },
    );
  }
}
