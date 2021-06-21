import 'package:flutter/material.dart';

import './card_rich_text.dart';
import '../model/country.dart';

class CountryCard extends StatelessWidget {
  final Country country;
  const CountryCard({
    Key key,
    this.country,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 3,
        vertical: 40,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(15.0)),
      ),
      elevation: 4.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  country.name,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  country.region,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 0.0),
            child: country.flag,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20.0),
            child: CardRichText(first: "Capital: ", second: country.capital),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 20.0),
            child: CardRichText(first: "Línguas: ", second: country.languages),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 20.0),
            child: CardRichText(first: "Área: ", second: country.area),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 20.0),
            child: CardRichText(
                first: "População (2019): ", second: country.population),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 20.0),
            child: CardRichText(first: "PIB (2007): ", second: country.pib),
          ),
        ],
      ),
    );
  }
}
