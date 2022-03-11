     import 'package:flutter/material.dart';
import 'hurufbesar.dart';
import 'hurufkecil.dart';

class HalamanHome extends StatelessWidget {
  const HalamanHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       
         body: Container(
        color: Colors.lightBlueAccent,
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: ElevatedButton(
                child: Text('Huruf Besar'),
                onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HurufBesar())
                )
                ),
              // child: Text('Huruf Kapital',
              //  style: TextStyle(color: Colors.black, fontSize: 20),
              //  ),
              
                height: 50,
                width: 250,
                margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                padding: EdgeInsets.fromLTRB(75, 10, 20, 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient:
                        LinearGradient(colors: [Colors.greenAccent, Colors.greenAccent]),
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
                        LinearGradient(colors: [Colors.greenAccent, Colors.greenAccent]),
                //       
                        ),
                
                ),
            // Container(
            //   child: Text(
            //     'Home',
            //     style: TextStyle(color: Colors.white, fontSize: 20),
            //   ),
            //   margin: EdgeInsets.all(16),
            // ),
          ],
        ),
      ),
      ),
    );
  }
}