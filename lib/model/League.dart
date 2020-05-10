class League {
  final String leagueKey;
  final String leagueName;
  final String countryKey;
  final String countryName;
  final String leagueLogo;

  League(
      {this.leagueKey,
      this.leagueName,
      this.countryKey,
      this.countryName,
      this.leagueLogo});

  factory League.fromJson(Map<String, dynamic> json) {
    return League(
        leagueKey: json["league_key"],
        leagueName: json["league_name"],
        countryKey: json["country_key"],
        countryName: json["country_name"],
        leagueLogo: json["league_logo"]);
  }
}
