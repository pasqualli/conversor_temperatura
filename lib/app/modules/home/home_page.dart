import 'package:conversor_temp_app/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff003366), // de #003366 Para 0xff003366
      //appBar: AppBar(title: Text('Conversor de Temperatura')),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.only(top: 80, left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Conversor de Temperatura",
                  style: TextStyle(
                    color: Color(0xffFFC801),
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Text(
                  "Converta para Fahrenheit",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: controller.txtCelscius.value,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(filled: true, fillColor: Colors.white, labelText: 'Valor em Celsios'),
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Obx(() => TextField(
                      controller: controller.txtFahrenheit.value,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(filled: true, fillColor: Colors.white, labelText: 'Temperatura em Fahrenheit'),
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                      readOnly: true,
                    )),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      final vlr = double.tryParse(controller.txtCelscius.value.text);
                      controller.converter(vlr);
                    },
                    child: Text('Converter Temperatura'),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff005CB9),
                      onPrimary: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      controller.limpar();
                    },
                    child: Text('Limpar'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      onPrimary: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
