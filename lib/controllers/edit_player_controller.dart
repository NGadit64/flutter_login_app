import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/football_player_controller.dart';
import '../models/player.dart';

class EditPlayerController extends GetxController {
  final nameController = TextEditingController();
  final positionController = TextEditingController();
  final numberController = TextEditingController();

  late int playerIndex;
  final footballController = Get.find<FootballPlayerController>();

  @override
  void onInit() {
    super.onInit();
    var args = Get.arguments as Map<String, dynamic>;
    playerIndex = args['index'];
    Player player = footballController.players[playerIndex];

    nameController.text = player.name;
    positionController.text = player.position;
    numberController.text = player.number.toString();
  }

  void savePlayer() {
    footballController.updatePlayer(
      playerIndex,
      nameController.text,
      positionController.text,
      int.tryParse(numberController.text) ?? 0,
    );
    Get.back();
  }
}
