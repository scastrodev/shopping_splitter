import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';

import 'package:shopping_splitter/app/ui/models/division_type.dart';
import 'package:shopping_splitter/app/ui/models/total_model.dart';

import 'utils/screen_size.dart';
import 'utils/theme_colors.dart';

class DivisionWidget extends StatefulWidget {
  final String labelText;
  final TotalModel totalModel;
  final DivisionType divisionType;
  final VoidCallback notifyParent;

  const DivisionWidget({
    Key? key,
    required this.labelText,
    required this.totalModel,
    required this.divisionType,
    required this.notifyParent,
  }) : super(key: key);

  @override
  State<DivisionWidget> createState() => _DivisionWidgetState();
}

class _DivisionWidgetState extends State<DivisionWidget> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          child: Center(
            child: Text(
              widget.labelText,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: getOnPrimaryColor(context),
              ),
            ),
          ),
          style: ElevatedButton.styleFrom(
            fixedSize: Size(
              getScreenWidth(context) * 0.6,
              getScreenHeight(context) * 0.07,
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
          ),
          onPressed: () {},
          onLongPress: () {
            textEditingController.clear();
            widget.totalModel.registerDivisionValues(widget.divisionType, 0);
            widget.notifyParent();
          },
        ),
        SizedBox(
          width: getScreenWidth(context) * 0.3,
          height: getScreenHeight(context) * 0.07,
          child: TextField(
            controller: textEditingController,
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
                symbol: '',
                locale: 'br',
                decimalDigits: 2,
              ),
            ],
            onChanged: (String value) {
              double? doubleValue = double.tryParse(value.replaceAll(',', '.'));

              if (doubleValue != null) {
                widget.totalModel.registerDivisionValues(
                  widget.divisionType,
                  doubleValue,
                );
              } else {
                widget.totalModel.registerDivisionValues(
                  widget.divisionType,
                  0,
                );
              }
              widget.notifyParent();
            },
          ),
        ),
      ],
    );
  }
}
