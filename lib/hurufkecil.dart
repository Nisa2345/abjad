import 'package:flutter/material.dart';

class HurufKecil extends StatelessWidget {
  final List alphabet = [
    "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"
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