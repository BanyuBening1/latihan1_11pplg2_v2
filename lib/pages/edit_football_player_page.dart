import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2_v2/components/Button.dart';
import 'package:latihan1_11pplg2_v2/components/TextField.dart';
import 'package:latihan1_11pplg2_v2/controllers/edit_football_player_controller.dart';

class EditFootballPlayerPage extends StatelessWidget {
  EditFootballPlayerPage({super.key}) {
    final int index = Get.arguments as int;
    final controller = Get.put(EditFootballPlayerController());
    controller.setPlayer(index);
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<EditFootballPlayerController>();

    return Scaffold(
      appBar: AppBar(title: const Text("Edit Player")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Obx(
              () => controller.image.value.isNotEmpty
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        controller.image.value,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    )
                  : const Icon(Icons.person, size: 100),
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
