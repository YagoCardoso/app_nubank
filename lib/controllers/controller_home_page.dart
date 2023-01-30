import 'package:get/get.dart';

class ControllerHomePage extends GetxController {
  String saldo = 'R\$ 961.34,77';
  String creditCardValue = 'R\$ 132.21,34';
  bool eyesValue = true;

  void showValue() {
    eyesValue = !eyesValue;

    update();
  }
}
