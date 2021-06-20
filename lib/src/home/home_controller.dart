import 'package:country_flags/src/widget/flags/chile_flag.dart';

import '../model/country.dart';

class HomeController {
  List<Country> countries = [
    Country(
      name: "Chile",
      capital: "Santiago",
      languages: ["Espanhol"],
      area: 756090,
      population: 16970265,
      pib: 163915215791,
      flag: ChileFlag(),
    ),
  ];
}
