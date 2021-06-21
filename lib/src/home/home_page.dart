import 'package:carousel_slider/carousel_slider.dart';
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
  int _currentPage = 0;
  final CarouselController _carouselController = CarouselController();
  List<CountryCard> _countries = [];
  HomeController _homeController = HomeController();

  @override
  void initState() {
    super.initState();
    initCountryCards();
  }

  void initCountryCards() {
    for (int i = 0; i < _homeController.countries.length; i++) {
      CountryCard countryCard =
          CountryCard(country: _homeController.countries[i]);
      _countries.add(countryCard);
    }
  }

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
          // child: Center(
          //   child: CountryCard(
          //     country: _homeController.countries[0],
          //   ),
          // ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CarouselSlider(
                items: _countries,
                carouselController: _carouselController,
                options: CarouselOptions(
                    height: MediaQuery.of(context).size.height * 0.9,
                    autoPlay: false,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentPage = index;
                      });
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    _homeController.countries.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _carouselController.animateToPage(entry.key),
                    child: Container(
                      width: 12.0,
                      height: 12.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF08183E).withOpacity(
                              _currentPage == entry.key ? 0.9 : 0.4)),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
