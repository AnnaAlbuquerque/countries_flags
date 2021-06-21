import '../widget/flags/algeria_flag.dart';
import '../widget/flags/cameroon_flag.dart';
import '../widget/flags/chile_flag.dart';
import '../model/country.dart';

class HomeController {
  List<Country> countries = [
    Country(
      name: "Chile",
      region: "América do Sul",
      capital: "Santiago",
      languages: "espanhol",
      area: "756 090 km²",
      population: "16 970 265",
      pib: "163 915 215 791",
      flag: ChileFlag(),
    ),
    Country(
      name: "Camarões",
      region: "África",
      capital: "Laundê",
      languages: "francês e inglês",
      area: "475 440 km²",
      population: "19 521 645",
      pib: "20 606 044 857",
      flag: CameroonFlag(),
    ),
    Country(
      name: "Argélia",
      region: "África",
      capital: "Argel",
      languages: "árabe",
      area: "2 381 740 km²",
      population: "34 895 470",
      pib: "137 452 488 789",
      flag: AlgeriaFlag(),
    ),
  ];
}
