import 'package:shopping_splitter/app/ui/models/division_type.dart';

class TotalModel {
  double isadoraTotalValue = 0;
  double samuelTotalValue = 0;

  TotalModel({
    this.isadoraTotalValue = 0,
    this.samuelTotalValue = 0,
  });

  void calculateTotalValue(DivisionType divisionType, double value) {
    if (divisionType == DivisionType.valueFiftyPercent) {
      isadoraTotalValue += value / 2;
      samuelTotalValue += value / 2;
    }

    if (divisionType == DivisionType.valueSeventyPercent) {
      isadoraTotalValue += value * 0.3;
      samuelTotalValue += value * 0.7;
    }

    if (divisionType == DivisionType.isadoraValue) {
      isadoraTotalValue += value;
    }

    if (divisionType == DivisionType.samuelValue) {
      samuelTotalValue += value;
    }
  }
}
