import 'package:get/state_manager.dart';
import '../models/player.dart';

class FootballPlayerController extends GetxController {
  var players = <Player>[
    Player(name: "Ramos", position: "Defender", number: 4, image: "assets/pohon.png"),
    Player(name: "Pepe", position: "Defender", number: 3, image: "assets/pohon.png"),
    Player(name: "Ronaldo 9", position: "Forward", number: 9, image: "assets/pohon.png"),
    Player(name: "Zidanes", position: "Midfielder", number: 5, image: "assets/pohon.png"),
  ].obs;

  void updatePlayer(int index, String name, String position, int number) {
    players[index].name = name;
    players[index].position = position;
    players[index].number = number;
    players.refresh();
  }
}
