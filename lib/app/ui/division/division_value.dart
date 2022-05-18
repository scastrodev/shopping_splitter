import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:shopping_splitter/app/ui/utils/screen_size.dart';
import 'package:shopping_splitter/app/ui/utils/theme_colors.dart';

class DivisionValue extends StatelessWidget {
  const DivisionValue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
      ),
    );
  }
}
