import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2_v2/controllers/football_player_controller.dart';
import 'package:latihan1_11pplg2_v2/routes/routes.dart';

class FootballPlayer extends StatelessWidget {
  FootballPlayer({super.key});

  final FootballPlayerController footballPlayerController = Get.put(
    FootballPlayerController(),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Obx(
        () => ListView.builder(
          itemCount: footballPlayerController.players.length,
          itemBuilder: (context, index) {
            final player = footballPlayerController.players[index];
            return Card(
              elevation: 2,
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(player.image),
                  radius: 25,
                ),
                title: Text(
                  player.nama,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "${player.posisi} • No. ${player.nomorPunggung}",
                ),
                onTap: () {
                  Get.toNamed(AppRoutes.editPage, arguments: index);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
