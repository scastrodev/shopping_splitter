import 'package:flutter/material.dart';
import 'package:shopping_splitter/app/ui/models/division_type.dart';
import 'package:shopping_splitter/app/ui/models/total_model.dart';
import 'package:shopping_splitter/app/ui/total_widget.dart';

import '../division_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TotalModel totalModel = TotalModel();

  void refresh() => setState(() {});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Rachador de compras'.toUpperCase(),
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          DivisionWidget(
            labelText: 'Valor compra - 50%',
            totalModel: totalModel,
            divisionType: DivisionType.valueFiftyPercent,
            notifyParent: refresh,
          ),
          DivisionWidget(
            labelText: 'Valor compra - 70%',
            totalModel: totalModel,
            divisionType: DivisionType.valueSeventyPercent,
            notifyParent: refresh,
          ),
          DivisionWidget(
            labelText: 'Valor compra - Isadora',
            totalModel: totalModel,
            divisionType: DivisionType.isadoraValue,
            notifyParent: refresh,
          ),
          DivisionWidget(
            labelText: 'Valor compra - Samuel',
            totalModel: totalModel,
            divisionType: DivisionType.samuelValue,
            notifyParent: refresh,
          ),
          TotalWidget(
            cardOwner: 'Isadora Resende Peres',
            totalValue: totalModel.isadoraTotalValue,
          ),
          TotalWidget(
            cardOwner: 'Samuel Castro de Lima',
            totalValue: totalModel.samuelTotalValue,
          ),
        ],
      ),
    );
  }
}
