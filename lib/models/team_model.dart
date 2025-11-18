class TeamModel {
  final String strTeam;
  final String strBadge;
  final String? strStadium;
  final String? strLeague;

  TeamModel({
    required this.strTeam,
    required this.strBadge,
    this.strStadium,
    this.strLeague,
  });

  factory TeamModel.fromJson(Map<String, dynamic> json) {
    return TeamModel(
      strTeam: json['strTeam'] ?? '',
      strBadge: json['strBadge'] ?? '',
      strStadium: json['strStadium'],
      strLeague: json['strLeague'],
    );
  }
}
