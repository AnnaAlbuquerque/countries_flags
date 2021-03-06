import 'package:flutter/material.dart';

class CameroonFlag extends StatelessWidget {
  const CameroonFlag({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 500,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          blurRadius: 5.0,
          spreadRadius: 4.0,
          color: Colors.grey.shade400,
        ),
      ]),
      child: Stack(
        children: [
          Row(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.green,
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.red,
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.star,
              color: Colors.yellow,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
