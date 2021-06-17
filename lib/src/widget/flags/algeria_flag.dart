import 'package:flutter/material.dart';

class AlgeriaFlag extends StatelessWidget {
  const AlgeriaFlag({
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
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            )
          ),
          Align(
            alignment: Alignment(0.11 , 0.0),
            child: Container(
              height: 84,
              width: 84,
              child: ClipOval(
                clipBehavior: Clip.hardEdge,
                child: Row(
                  children: [
                    Flexible(
                      flex: 2,
                      child: Container(
                        height: 90,
                        width: 90,
                        color: Colors.green,
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Container(
                        height: 90,
                        width: 90,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ),
          Align(
            alignment: Alignment(0.17 , 0.0),
            child: Transform.rotate(
              angle: 180,
              child: Icon(
                Icons.star,
                color: Colors.red,
                size: 60,
              ),
            ),
          ),
        ],
      ),
    );
  }
}