import 'package:colours_flutter/models/dastar_data.dart';
import 'package:colours_flutter/screens/dastars_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Dastar Colours';

    return ChangeNotifierProvider(
      create: (BuildContext context) => DastarData(),
      child: MaterialApp(
        title: title,
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.dark,
        home: const DastarsScreen(),
      ),
    );
  }
}
