import 'package:flutter/material.dart';
import 'package:shopping_splitter/app/ui/utils/screen_size.dart';
import 'package:shopping_splitter/app/ui/utils/theme_colors.dart';

class DivisionLabel extends StatelessWidget {
  final String labelText;

  const DivisionLabel({Key? key, required this.labelText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getScreenWidth(context) * 0.6,
      height: getScreenHeight(context) * 0.07,
      decoration: BoxDecoration(
        color: getPrimaryColor(context),
        borderRadius: const BorderRadius.all(Radius.circular(15)),
      ),
      child: Center(
        child: Text(
          labelText,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: getOnPrimaryColor(context),
          ),
        ),
      ),
    );
  }
}
