import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        title: Text('2021-2022 Senesi Şampiyonu'),
      ),
      body: Center(
        child: Image(
            image: NetworkImage(
                'https://i2.milimaj.com/i/milliyet/75/0x0/628009eb86b24514d44e8abf.jpg')),
      ),
    ),
  ));
}
