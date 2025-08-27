import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2_v2/controllers/football_player_controller.dart';
import 'package:latihan1_11pplg2_v2/model/football_player_model.dart';

class EditFootballPlayerController extends GetxController {
  late Player player;
  late int index;

  final nama = TextEditingController();
  final posisi = TextEditingController();
  final nomor = TextEditingController();

  var image = "".obs;

  @override
  void onInit() {
    super.onInit();
    index = Get.arguments as int;
     final footballController = Get.find<FootballPlayerController>();
    player = footballController.players[index];
    nama.text = player.nama;
    posisi.text = player.posisi;
    nomor.text = player.nomorPunggung.toString();
    image.value = player.image;
  }

  

  void savePlayer() {
    final footballController = Get.find<FootballPlayerController>();
    footballController.players[index] = Player(
      nama: nama.text,
      posisi: posisi.text,
      nomorPunggung: int.tryParse(nomor.text) ?? 0,
      image: image.value,
    );
    footballController.players.refresh();
  }

  @override
  void onClose() {
    nama.dispose();
    posisi.dispose();
    nomor.dispose();
    super.onClose();
  }
}
