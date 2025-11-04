import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/football_player_controller.dart';
import '../routes/routes.dart';

class FootballPlayerMobile extends StatelessWidget {
  FootballPlayerMobile({super.key});

  final controller = Get.find<FootballPlayerController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pemain (Mobile)")),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
            itemCount: controller.players.length,
            itemBuilder: (context, index) {
              var player = controller.players[index];
              return ListTile(
                onTap: () {
                  Get.toNamed(
                    AppRoutes.editPlayerPage,
                    arguments: {'index': index},
                  );
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(player.image),
                  radius: 30,
                ),
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
