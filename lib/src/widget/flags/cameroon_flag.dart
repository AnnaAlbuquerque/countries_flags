import 'package:flutter/material.dart';

class CameroonFlag extends StatelessWidget {
  const CameroonFlag({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3, 
      width: MediaQuery.of(context).size.width * 0.8,
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