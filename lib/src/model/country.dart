import 'package:flutter/cupertino.dart';

class Country {
  final String name;
  final String capital;
  final List<String> languages;
  final int area;
  final int population;
  final int pib;
  final Widget flag;

  Country(this.name, this.capital, this.languages, this.area, this.population,
      this.pib, this.flag);
}
