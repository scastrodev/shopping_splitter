import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:shopping_splitter/app/ui/models/division_type.dart';

import 'utils/screen_size.dart';
import 'utils/theme_colors.dart';

class DivisionWidget extends StatelessWidget {
  final String labelText;
  final Function(DivisionType, double) calculateTotalValue;
  final DivisionType divisionType;

  const DivisionWidget({
    Key? key,
    required this.labelText,
    required this.calculateTotalValue,
    required this.divisionType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
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
        ),
        SizedBox(
          width: getScreenWidth(context) * 0.3,
          height: getScreenHeight(context) * 0.07,
          child: TextField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
            decoration: InputDecoration(
              hintText: '0',
              hintStyle: TextStyle(color: getPrimaryColor(context)),
              contentPadding: const EdgeInsets.only(top: 0),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: getPrimaryColor(context),
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: getOnPrimaryColor(context),
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            inputFormatters: [
              CurrencyTextInputFormatter(
                locale: 'br',
                decimalDigits: 2,
                symbol: '',
              ),
            ],
            onChanged: (String value) {
              print('########### ${value.replaceAll(',', '.')}');
              if (!value.contains('-') || value != '0') {
                calculateTotalValue(
                  divisionType,
                  double.parse(value.replaceAll(',', '.')),
                );
              }
            },
          ),
        )
      ],
    );
  }
}
