import 'package:flutter/material.dart';

class HurufBesar extends StatelessWidget {
  final List alphabet = [
    "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
            children: <Widget>[
              GridView.count(
                crossAxisCount: 6,
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.all(20),
                children: List.generate(alphabet.length, (index) {
                  return Container(
                    height: 100,
                    child: Card(
                      child: Center(
                          child: Text(alphabet[index],
                              style: TextStyle(
                                shadows: [
                                  Shadow(color: Colors.black38,
                                  
                                  blurRadius: 1,
                                  offset: Offset(2,2),
                                  )
                                ],
                                  color: Colors.black, fontSize: 20,
                                  ),
                                  )
                                  ),
                     
                    ),
                  );
                }
                ),
              ),
              // FlutterLogo(),
              // FlutterLogo(),
              // FlutterLogo(),
              // FlutterLogo(),
            ],
          )
      ),
    );
  }
}