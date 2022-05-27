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

    calculateIsadoraTotalValue(purchaseStatus);
    calculateSamuelTotalValue(purchaseStatus);
  }

  void calculateIsadoraTotalValue(PurchaseStatus purchaseStatus) {
    isadoraTotalValue = 0;

    if (purchaseStatus == PurchaseStatus.present) {
      isadoraTotalValue += divisionModel.presentValueFiftyPercent / 2;
      isadoraTotalValue += divisionModel.presentValueSeventyPercent * 0.3;
      isadoraTotalValue += divisionModel.presentIsadoraValue;
    } else {
      isadoraTotalValue += divisionModel.valueFiftyPercent / 2;
      isadoraTotalValue += divisionModel.valueSeventyPercent * 0.3;
      isadoraTotalValue += divisionModel.isadoraValue;
    }
  }

  void calculateSamuelTotalValue(PurchaseStatus purchaseStatus) {
    samuelTotalValue = 0;

    if (purchaseStatus == PurchaseStatus.present) {
      samuelTotalValue += divisionModel.presentValueFiftyPercent / 2;
      samuelTotalValue += divisionModel.presentValueSeventyPercent * 0.7;
      samuelTotalValue += divisionModel.presentSamuelValue;
    } else {
      samuelTotalValue += divisionModel.valueFiftyPercent / 2;
      samuelTotalValue += divisionModel.valueSeventyPercent * 0.7;
      samuelTotalValue += divisionModel.samuelValue;
    }
  }
}
