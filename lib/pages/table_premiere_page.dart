import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tes_flutter/controllers/table_premiere_controller.dart';

class TablePremierePage extends StatelessWidget {
  const TablePremierePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TablePremiereController>();

    return Scaffold(
      appBar: AppBar(title: const Text("Table Premiere")),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        return RefreshIndicator(
          onRefresh: () async {
            await controller.fetchAPITablePremiere(); 
          },
          child: ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(), 
            itemCount: controller.tableStandings.length,
            itemBuilder: (context, index) {
              final team = controller.tableStandings[index];
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(team.strBadge),
                    radius: 25,
                  ),
                  title: Text(team.strTeam),
                  subtitle: Text(
                    "D: ${team.intDraw}  W: ${team.intWin}  L: ${team.intLoss}",
                  ),
                  trailing: Text(team.intPoints),
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
