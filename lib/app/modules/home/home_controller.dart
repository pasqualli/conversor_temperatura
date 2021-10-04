import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var txtCelscius = TextEditingController().obs;
  var txtFahrenheit = TextEditingController().obs;

  void limpar() {
    txtFahrenheit.value.clear();
  }

  void converter(vlrCelscius) {
    txtFahrenheit.value.text = (vlrCelscius * (9 / 5) + 32).toString();
  }
}
