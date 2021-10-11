import 'dart:collection';

import 'package:colours_flutter/models/dastar.dart';
import 'package:flutter/material.dart';

class DastarData extends ChangeNotifier {
  final List<Dastar> _dastars = [
    Dastar(colour: const Color(0xFFFFFFFF), larhs: 6, length: Length.medium),
    Dastar(colour: const Color(0xFFFF8C15), larhs: 7, length: Length.short),
    Dastar(colour: const Color(0xFF730202), larhs: 6, length: Length.short),
    Dastar(colour: const Color(0xFFE6ED28), larhs: 6, length: Length.long),
    Dastar(colour: const Color(0xFFB1B1B1), larhs: 6, length: Length.short),
  ];

  UnmodifiableListView<Dastar> get dastars {
    return UnmodifiableListView(_dastars);
  }

  int get dastarCount {
    return _dastars.length;
  }

  void addDastar(Color colour, int larhs, Length length) {
    _dastars.add(Dastar(colour: colour, larhs: larhs, length: length));
    notifyListeners();
  }

  void deleteDastar(int index) {
    _dastars.removeAt(index);
    notifyListeners();
  }
}
