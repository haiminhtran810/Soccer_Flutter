import 'package:http/http.dart' as http;
import 'package:soccerflutter/model/Country.dart';
import 'dart:convert';
import 'package:soccerflutter/model/League.dart';

class LoadDataRemote {
  final String _API_KEY =
      "c09df9435bbce0d7c68a3efade096ff3613cdc1b3a6b7999c9434b8d889063f8";

  Future<void> fetchCountries() async {
    String urlGetCountries =
        "https://allsportsapi.com/api/football/?met=Countries&APIkey=$_API_KEY";
    final response = await http.get(urlGetCountries);
    if (response.statusCode == 200) {
      return Country.fromJson(json.decode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  Future<List<League>> fetchLeagues() async {
    String urlGetLeagues =
        "https://allsportsapi.com/api/football/?met=Leagues&APIkey=$_API_KEY";
    final response = await http.get(urlGetLeagues);
    List<League> leagues = [];
    if (response.statusCode == 200) {
      final extractedData = json.decode(response.body);
      List loadedLeagues = extractedData['result'];
      for (var league in loadedLeagues) {
        leagues.add(League(
            leagueKey: league["league_key"],
            leagueName: league["league_name"],
            countryKey: league["country_key"],
            countryName: league["country_name"],
            leagueLogo: league["league_logo"]));
      }
      return leagues;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
