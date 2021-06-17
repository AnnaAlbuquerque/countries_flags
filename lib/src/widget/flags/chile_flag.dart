import 'package:flutter/material.dart';

class ChileFlag extends StatelessWidget {
  const ChileFlag({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3, 
      width: MediaQuery.of(context).size.width * 0.8,   
      child: Column(
        children: [
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Stack(
                    children: [
                      Container(
                        color: Colors.blue,
                      ),
                      Container(
                        child: Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 70,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}



