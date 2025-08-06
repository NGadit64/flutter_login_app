import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tes_flutter/controllers/calculator_controller.dart';
import 'package:tes_flutter/widget/widget_button.dart';
import 'package:tes_flutter/widget/widget_textfield.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final CalculatorController calculatorController = Get.put(
    CalculatorController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Calculator")),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyTextField(
              textEditingController: calculatorController.txtAngka1,
              labelColor: Colors.green, pass: false,isNumber: true,
              labelText: "input angka 1",
            ),
            MyTextField(
              textEditingController: calculatorController.txtAngka2,
              labelText: "input angka 2",
              labelColor: Colors.green, pass: false,isNumber: true,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  CustomButton(
                    text: "+",
                    textColor: Colors.blue,
                    onPressed: () {
                      calculatorController.tambah();
                    },
                  ),
                  CustomButton(
                    text: "-",
                    textColor: Colors.blue,
                    onPressed: () {
                      calculatorController.kurang();
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  CustomButton(
                    text: "X",
                    textColor: Colors.blue,
                    onPressed: () {
                      calculatorController.kali();
                    },
                  ),
                  CustomButton(
                    text: "/",
                    textColor: Colors.blue,
                    onPressed: () {
                      calculatorController.bagi();
                    },
                  ),
                ],
              ),
            ),
            // render UI berada di wrap OBX
            Obx(() => Text("Hasil " + calculatorController.hasil.value)),
            CustomButton(
              text: "Clear",
              textColor: Colors.green,
              onPressed: () {
                calculatorController.clear();
              },
            ),
          ],
        ),
      ),
    );
  }
}
