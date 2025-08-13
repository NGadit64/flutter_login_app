import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/football_player_controller.dart';
import '../routes/routes.dart';

class FootballPlayer extends StatelessWidget {
  FootballPlayer({super.key});

  final FootballPlayerController footballPlayerController = Get.put(
    FootballPlayerController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Real Madrid player")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
            itemCount: footballPlayerController.players.length,
            itemBuilder: (context, index) {
              var player = footballPlayerController.players[index];
              return ListTile(
                onTap: () {
                //  print ("player clicked" + footballPlayerController.players[index]);
                  Get.toNamed(AppRoutes.editPlayerPage, arguments: {'index': index});
                },
                title: Text(player.name),
                subtitle: Text("${player.position} • ${player.number}"),
              );
            },
          ),
        ),
      ),
    );
  }
}
