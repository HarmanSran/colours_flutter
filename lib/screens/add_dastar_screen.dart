import 'package:colours_flutter/models/dastar.dart';
import 'package:colours_flutter/models/dastar_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:provider/provider.dart';

class AddDastarScreen extends StatefulWidget {
  AddDastarScreen({Key? key}) : super(key: key);

  @override
  State<AddDastarScreen> createState() => _AddDastarScreenState();
}

class _AddDastarScreenState extends State<AddDastarScreen> {
  Color colour = const Color(0xFFFFFFFF);
  Color pickerColor = const Color(0xFFFFFFFF);
  int larhs = 6;
  Length length = Length.short;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            child: const Text('Dastar colour'),
            style: ElevatedButton.styleFrom(
              primary: colour,
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Pick a color!'),
                  content: SingleChildScrollView(
                    child: ColorPicker(
                      pickerColor: pickerColor,
                      onColorChanged: (Color newColor) {
                        setState(() => pickerColor = newColor);
                      },
                    ),
                  ),
                  actions: <Widget>[
                    ElevatedButton(
                      child: const Text('Got it'),
                      onPressed: () {
                        setState(() => colour = pickerColor);
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              );
            },
          ),
          Row(children: [
            Flexible(
              child: TextField(
                decoration: const InputDecoration(labelText: "Larhs"),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                ],
                // textAlign: TextAlign.center,
                onChanged: (newLarhs) {
                  setState(() {
                    larhs = int.parse(newLarhs);
                  });
                },
              ),
            ),
            DropdownButton<Length>(
              value: length,
              // icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              style: const TextStyle(color: Colors.white70),
              underline: Container(
                height: 4,
                color: Colors.lightBlueAccent,
              ),
              onChanged: (Length? newLength) {
                setState(() {
                  length = newLength!;
                });
              },
              items: Length.values
                  .map((len) => DropdownMenuItem(
                        child: Text(getLengthCaption(len)),
                        value: len,
                      ))
                  .toList(),
            ),
          ]),
          ElevatedButton(
            onPressed: () {
              Provider.of<DastarData>(context, listen: false)
                  .addDastar(colour, larhs, length);
              Navigator.pop(context);
            },
            child: const Text('Save'),
            style: ElevatedButton.styleFrom(
              primary: Colors.blueAccent,
            ),
          ),
        ],
      ),
    );
  }
}
