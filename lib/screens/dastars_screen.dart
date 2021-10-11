import 'package:colours_flutter/widgets/dastars_grid.dart';
import 'package:flutter/material.dart';

class DastarsScreen extends StatelessWidget {
  const DastarsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Dastar Colours';

    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("TODO");
        },
        child: const Icon(Icons.add),
      ),
      body: const DastarsGrid(),
    );
  }
}
