import 'package:get/get.dart';
import 'package:tes_flutter/controllers/calculator_controller.dart';
import 'package:tes_flutter/controllers/contact_controller.dart';

class ContactBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ContactController());
  }
  

}