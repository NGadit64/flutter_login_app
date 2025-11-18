// import 'dart:convert';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'package:tes_flutter/models/table_premiere_model.dart';

// class TablePremiereController extends GetxController {
//   var isLoading = false.obs;
//   var tableStandings = <Table>[].obs;


//   @override
//   void onInit() {
//     super.onInit();
//     fetchAPITablePremiere();
//   }

//   Future<void> fetchAPITablePremiere() async {
//     const url = 'https://www.thesportsdb.com/api/v1/json/3/lookuptable.php?l=4328&s=2025-2026'; //gru
//     //const url = 'https://www.thesportsdb.com/api/v1/json/3/search_all_teams.php?l=English Premier League';
//     try {
//       isLoading.value = true;
//       final response = await http.get(Uri.parse(url));

//       if (response.statusCode == 200) {
//         final data = jsonDecode(response.body);
//         final List standings = data['table'];
//         tableStandings.assignAll(standings.map((e) => Table.fromJson(e)).toList());
//       } else {
//         Get.snackbar("Error", "Gagal mengambil data: ${response.statusCode}");
//       }
//     } catch (e) {
//       Get.snackbar("Error", e.toString());
//     } finally {
//       isLoading.value = false;
//     }
//   }
// }

import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:tes_flutter/models/table_premiere_model.dart';
import 'package:tes_flutter/models/team_model.dart';

class TablePremiereController extends GetxController {
  var isLoading = false.obs;
  var tableStandings = <TeamModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchAPITablePremiere();
  }

  Future<void> fetchAPITablePremiere() async {
    const url =
        'https://www.thesportsdb.com/api/v1/json/3/search_all_teams.php?l=English Premier League';
    try {
      isLoading.value = true;
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        final List listTeams = data['teams'];
        tableStandings.assignAll(
          listTeams.map((e) => TeamModel.fromJson(e)).toList(),
        );
      } else {
        Get.snackbar("Error", "Gagal mengambil data: ${response.statusCode}");
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
