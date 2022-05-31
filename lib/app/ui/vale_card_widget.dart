import 'package:flutter/material.dart';
import 'package:shopping_splitter/app/ui/utils/screen_size.dart';

class ValeCardWidget extends StatelessWidget {
  final String cardOwner;
  const ValeCardWidget({Key? key, required this.cardOwner}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getScreenWidth(context) * 0.6,
      height: getScreenHeight(context) * 0.18,
      decoration: const BoxDecoration(
        color: Color(0xFFAB2B45),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.only(right: getScreenWidth(context) * 0.03),
            child: Align(
              alignment: Alignment.topRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Alimentação',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Icon(
                    Icons.shopping_cart,
                    size: getScreenWidth(context) * 0.08,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: getScreenWidth(context) * 0.03),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Image.asset(
                'assets/images/card-chip.png',
                width: getScreenWidth(context) * 0.09,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                cardOwner.toUpperCase(),
                style: const TextStyle(fontSize: 10, letterSpacing: 2),
              ),
              Image.asset(
                'assets/images/vale-card-logo.png',
                width: getScreenWidth(context) * 0.2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
