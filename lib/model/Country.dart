class Country {
  final String countryKey;
  final String countryName;
  final String countryIso2;
  final String countryLogo;

  Country(
      {this.countryKey, this.countryName, this.countryIso2, this.countryLogo});

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(countryKey: json["country_key"],
        countryName: json["country_name"],
        countryIso2: json["country_iso2"],
        countryLogo: json["country_logo"]);
  }
}
