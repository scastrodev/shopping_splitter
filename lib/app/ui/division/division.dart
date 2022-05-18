import 'package:flutter/material.dart';

import 'division_label.dart';
import 'division_value.dart';

class Division extends StatelessWidget {
  final String labelText;

  const Division({Key? key, required this.labelText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        DivisionLabel(labelText: labelText),
        const DivisionValue(),
      ],
    );
  }
}
