import 'package:flutter/material.dart';
import 'package:shopping_splitter/app/ui/ticket_card_widget.dart';
import 'package:shopping_splitter/app/ui/utils/screen_size.dart';
import 'package:shopping_splitter/app/ui/utils/theme_colors.dart';
import 'package:shopping_splitter/app/ui/vale_card_widget.dart';

import 'models/card_type.dart';

class TotalWidget extends StatelessWidget {
  final String cardOwner;
  final double totalValue;
  final CardType cardType;

  const TotalWidget({
    Key? key,
    required this.cardOwner,
    required this.totalValue,
    required this.cardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        cardType == CardType.valeCard
            ? ValeCardWidget(cardOwner: cardOwner)
            : TicketCardWidget(cardOwner: cardOwner),
        Container(
          width: getScreenWidth(context) * 0.3,
          height: getScreenHeight(context) * 0.15,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: getPrimaryContainerColor(context),
          ),
          child: Center(
            child: Text(
              'R\$ ${totalValue.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
