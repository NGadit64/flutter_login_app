import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tes_flutter/controllers/login_controller.dart';
import 'package:tes_flutter/widget/custom_textfield.dart';
import 'package:tes_flutter/widget/widget_button.dart';
import '../register_page.dart';

//stfl +enter
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              CustomTextfield(
                label: "username",
                labelColor: Colors.black,
                pass: false,
                controller: controller.usernameController,
                isNumber: false,
              ),
              CustomTextfield(
                label: "password",
                labelColor: Colors.black,
                pass: true,
                controller: controller.passwordController,
                isNumber: false,
              ),
              CustomButton(
                text: "Login",
                textColor: Colors.green,
                onPressed: () {
                  controller.login();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
