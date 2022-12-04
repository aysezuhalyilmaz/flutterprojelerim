import 'package:flutter/material.dart';

void main() {
  runApp(
    BenimUygulamam(),
  );
}

class BenimUygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.brown,
          body: SafeArea(
              child: Column( children: [
                Container(color: Colors.white, width:200, height: 100,child: Text('kutu1')
                ),
                Container(color: Colors.blue, width: 200, height: 100,child:Text('kutu2')
                ),
                Container(color: Colors.red, width: 200, height: 100,child:Text('kutu3')
                ),


              ],)
          ),
        )
    );
  }
}



