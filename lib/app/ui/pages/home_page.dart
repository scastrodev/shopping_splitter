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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          'RACHADOR DE COMPRAS',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          DivisionWidget(
            labelText: 'Valor compra - 50%',
            calculateTotalValue: totalModel.calculateTotalValue,
            divisionType: DivisionType.valueFiftyPercent,
          ),
          DivisionWidget(
            labelText: 'Valor compra - 70%',
            calculateTotalValue: totalModel.calculateTotalValue,
            divisionType: DivisionType.valueSeventyPercent,
          ),
          DivisionWidget(
            labelText: 'Valor compra - Isadora',
            calculateTotalValue: totalModel.calculateTotalValue,
            divisionType: DivisionType.isadoraValue,
          ),
          DivisionWidget(
            labelText: 'Valor compra - Samuel',
            calculateTotalValue: totalModel.calculateTotalValue,
            divisionType: DivisionType.samuelValue,
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
