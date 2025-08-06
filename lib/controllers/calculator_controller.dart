import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController {
  final txtAngka1 = TextEditingController();
  final txtAngka2 = TextEditingController();
  var textHasil = "".obs;

  void tambah() {
    int angka1 = int.parse(txtAngka1.text);
    int angka2 = int.parse(txtAngka2.text);

    int hasilJumlah = angka1 + angka2;
    textHasil.value = hasilJumlah.toString();
  }

  void kurang() {
    int angka1 = int.parse(txtAngka1.text);
    int angka2 = int.parse(txtAngka2.text);

    int hasilKurang = angka1 - angka2;
    textHasil.value = hasilKurang.toString();
  }

  void kali() {
    int angka1 = int.parse(txtAngka1.text);
    int angka2 = int.parse(txtAngka2.text);

    int hasilKali = angka1 * angka2;
    textHasil.value = hasilKali.toString();
  }

  void bagi() {
    int angka1 = int.parse(txtAngka1.text);
    int angka2 = int.parse(txtAngka2.text);

    double hasilBagi = angka1 / angka2;
    textHasil.value = hasilBagi.toString();
  }

  void clear() {
    txtAngka1.clear();
    txtAngka2.clear();
    textHasil.value = '';
  }
}
