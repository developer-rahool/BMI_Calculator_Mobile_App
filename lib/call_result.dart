// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

class CalculateResult {
  final int weight;
  final int height;
  double result;
  //String msg = "";

  CalculateResult(
    this.weight,
    this.height,
    this.result,
  );

  calculatedResult() {
    result = weight / pow(height / 100, 2);
    return result.toStringAsFixed(1);
  }

  getmsg() {
    if (result > 25.0) {
      return "Over Weight";
    } else if (result > 18.5) {
      return "Normal Weight";
    } else if (result < 18.5) {
      return "Under Weight";
    }
  }

  getDescription() {
    if (result > 25.0) {
      return "You have a higher weight than normal, try to lose your weight through any activity yo want";
    } else if (result > 18.5) {
      return "You have a normal weight keep it";
    } else if (result < 18.5) {
      return "Your weight is less than normal weight, so please gain some weight";
    }
  }
}
