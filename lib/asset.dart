import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Color(0xffD7E0FF),
      appBar: AppBar(
        centerTitle: true ,
        backgroundColor: Colors.pink[200],
        title: Text('TEBRİK KARTI'),
      ),
      body: Center(child: Image.asset('images/mutlu_bayramlar.jpg')),
    ),
  ));
}
