class League {
  String _leagueKey;
  String _leagueName;
  String _countryKey;
  String _countryName;
  String _leagueLogo;

  League(this._leagueKey, this._leagueName, this._countryKey, this._countryName,
      this._leagueLogo);

  @override
  String toString() {
    return "League : $_leagueKey $_leagueName $_countryKey $_countryName $_leagueLogo";
  }
}
