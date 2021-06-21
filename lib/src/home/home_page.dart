import 'package:flutter/material.dart';

import '../widget/card_rich_text.dart';
import './home_controller.dart';
import '../widget/country_card.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController controller = HomeController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.4, 0.4],
            colors: [Color(0xFF08183E), Color(0xFFE3E3E3)]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: CountryCard(country: controller.countries[1]),
            ),
          ),
        ),
      ),
    );
  }
}
