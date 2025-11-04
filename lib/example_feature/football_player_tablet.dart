import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/football_player_controller.dart';
import '../routes/routes.dart';

class FootballPlayerTablet extends StatelessWidget {
  FootballPlayerTablet({super.key});

  final controller = Get.find<FootballPlayerController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pemain (Tablet)")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(
          () => GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // tampilkan dua kolom di tablet
              childAspectRatio: 3.5,
            ),
            itemCount: controller.players.length,
            itemBuilder: (context, index) {
              var player = controller.players[index];
              return Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
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
                  title: Text(
                    player.name,
                    style: const TextStyle(fontSize: 18),
                  ),
                  subtitle: Text(
                    "${player.position} • ${player.number}",
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
