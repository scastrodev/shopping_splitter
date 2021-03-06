import 'package:flutter/material.dart';
import 'package:shopping_splitter/app/ui/utils/screen_size.dart';

class TicketCardWidget extends StatelessWidget {
  final String cardOwner;

  const TicketCardWidget({Key? key, required this.cardOwner}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getScreenWidth(context) * 0.6,
      height: getScreenHeight(context) * 0.18,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: getScreenWidth(context) * 0.15,
                  height: getScreenHeight(context) * 0.05,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset(
                    'assets/images/ticket-logo.png',
                    width: getScreenWidth(context) * 0.25,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: getScreenWidth(context) * 0.10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  'assets/images/card-chip.png',
                  width: getScreenWidth(context) * 0.09,
                ),
              ),
            ),
            Text(
              cardOwner.toUpperCase(),
              style: const TextStyle(fontSize: 10, letterSpacing: 2),
            ),
          ],
        ),
      ),
    );
  }
}
