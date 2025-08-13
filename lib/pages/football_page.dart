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
    return Scaffold(
      appBar: AppBar(title: Text("Football Player")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
            itemCount: footballPlayerController.players.length,
            itemBuilder: (context, index) {
              final player = footballPlayerController.players[index];
              return ListTile(
                leading: Image.asset(player.image, width: 50, height: 50),
                title: Text(player.nama),
                subtitle: Text(
                  "${player.posisi} - No. ${player.nomorPunggung}",
                ),
                onTap: () {
                  Get.toNamed(AppRoutes.editPage, arguments: index);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
