import 'package:get/get.dart';
import 'package:latihan1_11pplg2_v2/model/football_player_model.dart';

class FootballPlayerController extends GetxController {
  var players = <Player>[
    Player(
      nama: "Gyokeres",
      posisi: "Striker",
      nomorPunggung: 14,
      image: "assets/images/gyokeres.jpeg",
    ),
    Player(
      nama: "Micky Van de Ven",
      posisi: "Centre Back",
      nomorPunggung: 37,
      image: "assets/images/vdv.jpeg",
    ),
    Player(
      nama: "Verbruggen",
      posisi: "Goalkeeper",
      nomorPunggung: 1,
      image: "assets/images/verbruggen.jpeg",
    ),
  ].obs;
}
