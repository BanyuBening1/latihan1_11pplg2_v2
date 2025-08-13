import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2_v2/components/Button.dart';
import 'package:latihan1_11pplg2_v2/components/TextField.dart';
import 'package:latihan1_11pplg2_v2/controllers/edit_football_player_controller.dart';
import 'package:latihan1_11pplg2_v2/controllers/football_player_controller.dart';
import 'package:latihan1_11pplg2_v2/model/football_player_model.dart';

class EditFootballPlayerPage extends StatelessWidget {
  EditFootballPlayerPage({super.key}) {
    final int index = Get.arguments as int;
    final controller = Get.put(EditFootballPlayerController());
    controller.setPlayer(index);
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<EditFootballPlayerController>();
    final player = controller.player;

    return Scaffold(
      appBar: AppBar(title: const Text("Edit Player")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(player.image, height: 150, fit: BoxFit.cover),
            ),
            const SizedBox(height: 20),
            ReuseableTextField(label: "Nama", controller: controller.nama),
            const SizedBox(height: 12),
            ReuseableTextField(label: "Posisi", controller: controller.posisi),
            const SizedBox(height: 12),
            ReuseableTextField(
              label: "Nomor Punggung",
              controller: controller.nomor,
              isNumber: true,
            ),
            const SizedBox(height: 20),
            ReuseableButton(
              text: "Simpan",
              bordercolor: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                controller.savePlayer();
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
