class DivisionModel {
  double valueFiftyPercent;
  double valueSeventyPercent;
  double isadoraValue;
  double samuelValue;

  DivisionModel({
    this.valueFiftyPercent = 0,
    this.valueSeventyPercent = 0,
    this.isadoraValue = 0,
    this.samuelValue = 0,
  });

  bool get isValuesEmpty {
    if (valueFiftyPercent <= 0 ||
        valueSeventyPercent <= 0 ||
        isadoraValue <= 0 ||
        samuelValue <= 0) {
      return true;
    } else {
      return false;
    }
  }

  double get presentValueFiftyPercent =>
      valueFiftyPercent - (valueSeventyPercent + isadoraValue + samuelValue);

  double get presentValueSeventyPercent =>
      valueSeventyPercent - (valueFiftyPercent + isadoraValue + samuelValue);

  double get presentIsadoraValue =>
      isadoraValue - (valueFiftyPercent + valueSeventyPercent + samuelValue);

  double get presentSamuelValue =>
      samuelValue - (valueFiftyPercent + valueSeventyPercent + isadoraValue);
}
