import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? seciliButon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextButton(
              onPressed: () {
                setState(() {
                  seciliButon = "SOL";
                });
              },
              child: Container(
                child: Text(seciliButon=="SOL"? "AKTİF BUTON" :  "PASİF BUTON"),
                width: 100,
                height: 400,
                color: seciliButon=="SOL"? Colors.lightGreen : Colors.red
                ,
              )),

          TextButton(
              onPressed: () {
                setState(() {
                  seciliButon = "SAĞ";
                });
              },
              child: Container(
                child: Text( seciliButon=="SAĞ"? "AKTİF BUTON" : "PASİF BUTON"),
                width: 100,
                height: 400,
                color: seciliButon=="SAĞ"? Colors.lightGreen : Colors.red
              ))
        ],
      )),
    );
  }
}
