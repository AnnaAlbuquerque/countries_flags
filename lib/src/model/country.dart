import 'package:flutter/cupertino.dart';

class Country {
  final String name;
  final String capital;
  final List<String> languages;
  final int area;
  final int population;
  final int pib;
  final Widget flag;

  Country(
      {@required this.capital,
      @required this.languages,
      @required this.area,
      @required this.population,
      @required this.pib,
      @required this.name,
      @required this.flag});
}
