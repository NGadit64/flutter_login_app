import 'package:get/get.dart';

import 'package:tes_flutter/controllers/football_player_controller.dart';

class FootballPLayerBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(FootballPlayerController());
  }
  

}