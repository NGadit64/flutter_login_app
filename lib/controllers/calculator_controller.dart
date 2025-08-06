import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController {
  final txtAngka1 = TextEditingController();
  final txtAngka2 = TextEditingController();
  var hasil = "".obs;

  void tambah() {
    int angka1 = int.parse(txtAngka1.text.toString());
    int angka2 = int.parse(txtAngka2.text.toString());

    int hasilJumlah = angka1 + angka2;
    print("hasil tambah " + hasilJumlah.toString());
    hasil.value = hasilJumlah.toString();
  }

  void kurang() {
    int angka1 = int.parse(txtAngka1.text.toString());
    int angka2 = int.parse(txtAngka2.text.toString());

    int hasilKurang = angka1 - angka2;
    print("hasil pengurangan " + hasilKurang.toString());
    hasil.value = hasilKurang.toString();
  }

  void kali() {
    int angka1 = int.parse(txtAngka1.text.toString());
    int angka2 = int.parse(txtAngka2.text.toString());

    int hasilKali = angka1 * angka2;
    print("hasil perkalian " + hasilKali.toString());
    hasil.value = hasilKali.toString();
  }

  void bagi() {
    int angka1 = int.parse(txtAngka1.text.toString());
    int angka2 = int.parse(txtAngka2.text.toString());

    double hasilBagi = angka1 / angka2;
    print("hasil pembagian " + hasilBagi.toString());
    hasil.value = hasilBagi.toString();
  }

  void clear() {
    txtAngka1.clear();
    txtAngka2.clear();
    hasil.value = "";
  }
}
