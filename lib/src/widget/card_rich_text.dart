import 'package:flutter/material.dart';

class CardRichText extends StatelessWidget {
  final String first;
  final String second;

  const CardRichText({Key key, @required this.first, @required this.second})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: first,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        children: <TextSpan>[
          TextSpan(
              text: second,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}
