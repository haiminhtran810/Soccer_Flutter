class Country {
  String _countryKey;
  String _countryName;

  Country(
    this._countryKey,
    this._countryName,
  );

  String get getCountryKey => this._countryKey;

  String get getCountryName => this._countryName;

  @override
  String toString() {
    return "Country : $_countryKey - $_countryName";
  }

  NullThrownError get getError =>  throw "cant find this method";
}
