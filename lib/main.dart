import 'package:flutter/material.dart';
 import 'home.dart';
 import 'hurufbesar.dart';
 import 'hurufkecil.dart';

void main() {
  runApp( MaterialApp(
    home: HalamanHome(),
  ));
}
class HalamanHome extends StatelessWidget {
  const HalamanHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       
         body: Container(
        color: Colors.purpleAccent,
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: ElevatedButton(
                child: Text('Huruf Besar'),
                onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HurufBesar()
                  ),
                ),
                ),
               //child: Text('Huruf Besar',
                //style: TextStyle(color: Colors.black, fontSize: 20),
                //),
                height: 50,
                width: 250,
                margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                padding: EdgeInsets.fromLTRB(75, 10, 20, 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient:
                        LinearGradient(colors: [Colors.pinkAccent, Colors.pinkAccent]),
                        ),
                
                ),
                Container(
              child: Text('Huruf Kecil',
               style: TextStyle(color: Colors.black, fontSize: 20),
               ),
                height: 50,
                width: 250,
                margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                padding: EdgeInsets.fromLTRB(75, 10, 20, 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient:
                        LinearGradient(colors: [Colors.pinkAccent, Colors.pinkAccent]),
                       
                        ),
                
                ),
             Container(
              child: Text(
                'Home',
                 style: TextStyle(color: Colors.white, fontSize: 20),
               ),
              margin: EdgeInsets.all(16),
             ),
          ],
        ),
      ),
      ),
    );
  }
}
