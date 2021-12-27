import 'package:colours_flutter/screens/add_dastar_screen.dart';
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
          showModalBottomSheet(
            context: context,
            builder: (context) => AddDastarScreen(),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: const DastarsGrid(),
      ),
    );
  }
}
