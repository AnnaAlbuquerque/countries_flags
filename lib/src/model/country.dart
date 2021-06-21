import 'package:flutter/cupertino.dart';

class Country {
  final String name;
  final String capital;
  final String region;
  final String languages;
  final String area;
  final String population;
  final String pib;
  final Widget flag;

  Country(
      {@required this.capital,
      @required this.region,
      @required this.languages,
      @required this.area,
      @required this.population,
      @required this.pib,
      @required this.name,
      @required this.flag});
}
