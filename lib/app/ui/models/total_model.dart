import 'package:shopping_splitter/app/ui/models/division_model.dart';
import 'package:shopping_splitter/app/ui/models/purchase_status.dart';

import 'division_type.dart';

class TotalModel {
  double isadoraTotalValue;
  double samuelTotalValue;
  DivisionModel divisionModel = DivisionModel();

  TotalModel({
    this.isadoraTotalValue = 0,
    this.samuelTotalValue = 0,
  });

  void registerDivisionValues(
    DivisionType divisionType,
    double value,
    PurchaseStatus purchaseStatus,
  ) {
    switch (divisionType) {
      case DivisionType.valueFiftyPercent:
        divisionModel.valueFiftyPercent = value;
        break;
      case DivisionType.valueSeventyPercent:
        divisionModel.valueSeventyPercent = value;
        break;
      case DivisionType.isadoraValue:
        divisionModel.isadoraValue = value;
        break;
      case DivisionType.samuelValue:
        divisionModel.samuelValue = value;
        break;
    }

    if (purchaseStatus == PurchaseStatus.present) {
      presentCalculateIsadoraTotalValue();
      presentCalculateSamuelTotalValue();
    } else {
      pastCalculateIsadoraTotalValue();
      pastCalculateSamuelTotalValue();
    }
  }

  void presentCalculateIsadoraTotalValue() {
    isadoraTotalValue = 0;
    isadoraTotalValue += divisionModel.valueFiftyPercent / 2;
  }

  void presentCalculateSamuelTotalValue() {}

  void pastCalculateIsadoraTotalValue() {
    isadoraTotalValue = 0;
    isadoraTotalValue += divisionModel.valueFiftyPercent / 2;
    isadoraTotalValue += divisionModel.valueSeventyPercent * 0.3;
    isadoraTotalValue += divisionModel.isadoraValue;
  }

  void pastCalculateSamuelTotalValue() {
    samuelTotalValue = 0;
    samuelTotalValue += divisionModel.valueFiftyPercent / 2;
    samuelTotalValue += divisionModel.valueSeventyPercent * 0.7;
    samuelTotalValue += divisionModel.samuelValue;
  }
}
