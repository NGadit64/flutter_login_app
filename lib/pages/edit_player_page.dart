import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/edit_player_controller.dart';
import 'package:tes_flutter/widget/widget_button.dart';
import 'package:tes_flutter/widget/widget_textfield.dart';

class EditPlayerPage extends StatelessWidget  {
  EditPlayerPage({super.key});

  final controller = Get.put(EditPlayerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            MyTextField(
              textEditingController: controller.nameController,
              labelText: "Nama",
              labelColor: Colors.black,
              pass: false,
              isNumber: false,
            ),
            SizedBox(height: 10),
            MyTextField(
              textEditingController: controller.positionController,
              labelText: "Posisi",
              labelColor: Colors.black,
              pass: false,
              isNumber: false,
            ),
            SizedBox(height: 10),
            MyTextField(
              textEditingController: controller.numberController,
              labelText: "Nomor Punggung",
              labelColor: Colors.black,
              pass: false,
              isNumber: true,
            ),
            SizedBox(height: 20),
            CustomButton(
              text: "Save",
              textColor: Colors.lightBlue,
              onPressed: controller.savePlayer,
            ),
          ],
        ),
      ),
    );
  }
}
