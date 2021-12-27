import 'package:flutter/material.dart';

enum Length { short, medium, long }

String getLengthCaption(Length length) {
  switch (length) {
    case Length.short:
      return "Short";
    case Length.medium:
      return "Medium";
    case Length.long:
      return "Long";
    default:
      return "???";
  }
}

class Dastar {
  final Color colour;
  // One "larh" is one "wind" (e.g. turn) of the turban
  final int larhs;
  // How long to leave the first larh (behind the neck)
  // Short ~= 3 inches
  // Medium ~= 5 inches
  // Long ~= 7 inches
  final Length length;

  Dastar({required this.colour, required this.larhs, required this.length});
}
