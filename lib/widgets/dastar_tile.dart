import 'package:colours_flutter/models/dastar.dart';
import 'package:flutter/material.dart';

class DastarTile extends StatelessWidget {
  const DastarTile({
    Key? key,
    required this.larhs,
    required this.length,
    required this.colour,
  }) : super(key: key);

  final int larhs;
  final Length length;
  final Color colour;

  static const double borderRadius = 8.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: colour,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(borderRadius),
                bottomLeft: Radius.circular(borderRadius),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: colour),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(borderRadius),
                bottomRight: Radius.circular(borderRadius),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(getLengthCaption(length)),
                Text(larhs.toString()),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
