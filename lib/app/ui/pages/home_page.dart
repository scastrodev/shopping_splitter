import 'package:flutter/material.dart';
import 'package:shopping_splitter/app/ui/models/card_type.dart';
import 'package:shopping_splitter/app/ui/models/division_type.dart';
import 'package:shopping_splitter/app/ui/models/purchase_status.dart';
import 'package:shopping_splitter/app/ui/models/total_model.dart';
import 'package:shopping_splitter/app/ui/total_widget.dart';
import 'package:shopping_splitter/app/ui/utils/screen_size.dart';
import 'package:shopping_splitter/app/ui/utils/theme_colors.dart';

import '../division_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TotalModel totalModel = TotalModel();
  PurchaseStatus purchaseStatus = PurchaseStatus.present;

  void refresh() => setState(() {});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Rachador de \n compras'.toUpperCase(),
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        actions: [
          const Center(
            child: Text(
              'Passada',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
            ),
          ),
          Switch(
            activeColor: getPrimaryContainerColor(context),
            inactiveThumbColor: getPrimaryContainerColor(context),
            value: purchaseStatus == PurchaseStatus.present ? true : false,
            onChanged: totalModel.divisionModel.isValuesEmpty
                ? (bool newValue) {
                    setState(
                      () => newValue == true
                          ? purchaseStatus = PurchaseStatus.present
                          : purchaseStatus = PurchaseStatus.past,
                    );
                  }
                : null,
          ),
          const Center(
            child: Text(
              'Presente',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
            ),
          ),
          SizedBox(width: getScreenWidth(context) * 0.05),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          DivisionWidget(
            labelText: 'Valor compra - 50%',
            totalModel: totalModel,
            divisionType: DivisionType.valueFiftyPercent,
            notifyParent: refresh,
            purchaseStatus: purchaseStatus,
          ),
          DivisionWidget(
            labelText: 'Valor compra - 70%',
            totalModel: totalModel,
            divisionType: DivisionType.valueSeventyPercent,
            notifyParent: refresh,
            purchaseStatus: purchaseStatus,
          ),
          DivisionWidget(
            labelText: 'Valor compra - Isadora',
            totalModel: totalModel,
            divisionType: DivisionType.isadoraValue,
            notifyParent: refresh,
            purchaseStatus: purchaseStatus,
          ),
          DivisionWidget(
            labelText: 'Valor compra - Samuel',
            totalModel: totalModel,
            divisionType: DivisionType.samuelValue,
            notifyParent: refresh,
            purchaseStatus: purchaseStatus,
          ),
          TotalWidget(
            cardOwner: 'Isadora R Peres',
            totalValue: totalModel.isadoraTotalValue,
            cardType: CardType.valeCard,
          ),
          TotalWidget(
            cardOwner: 'Samuel Castro de Lima',
            totalValue: totalModel.samuelTotalValue,
            cardType: CardType.ticketCard,
          ),
        ],
      ),
    );
  }
}
