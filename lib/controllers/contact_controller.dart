import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../dbHelper.dart';

class ContactController extends GetxController {
  final TextEditingController nameController = TextEditingController();
  final contacts = <Map<String, dynamic>>[].obs;  // <-- simpan id + name
  final _dbHelper = DBHelper();

  @override
  void onInit() {
    super.onInit();
    fetchNames();
  }

  Future<void> fetchNames() async {
    final data = await _dbHelper.getNames();
    contacts.value = data; 
  }

  Future<void> addName() async {
    final text = nameController.text.trim();
    if (text.isEmpty) return;
    await _dbHelper.insertName(text);
    nameController.clear();
    fetchNames();
  }

  Future<void> deleteName(int id) async {
    await _dbHelper.deleteName(id);
    fetchNames();
  }

  @override
  void onClose() {
    nameController.dispose();
    super.onClose();
  }
}
