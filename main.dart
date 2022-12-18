import 'package:flutter/material.dart';

void main() => runApp(BilgiTesti());

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.indigo[700],
            body: SafeArea(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: SoruSayfasi(),
            ))));
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {



  List <Widget> seciliButon =  [

  ];


  List <Soru> soruBankasi = [
    Soru(soruMetni: "himym 8 sezondur", soruYaniti: false),
  Soru(soruMetni: "robin barney ile evli kalmalıydı", soruYaniti: true),
  Soru(soruMetni:   "robin dizinin en kötü karakteridir", soruYaniti: false),
  Soru(soruMetni:  "ted robinden iyisini hak ediyordu", soruYaniti: true),
  Soru(soruMetni: "himym en komik sitcomdur", soruYaniti: true) ];
  int soruNumarasi= 0;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                soruBankasi[soruNumarasi].soruMetni,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(spacing: 5,
            runSpacing: 5,
            children: seciliButon),  // Axis.vertical yaparsan dikey dizer.
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.red[400],
                          child: Icon(
                            Icons.thumb_down,
                            size: 30.0,
                          ),
                          onPressed: () {
                            bool dogruYanit = soruBankasi[soruNumarasi].soruYaniti;

                            setState((){
                              if(dogruYanit==false) {  seciliButon.add(dogruIconu);}
                              else {seciliButon.add(yanlisIconu);}

                                    soruNumarasi= soruNumarasi+1;
                              if( soruNumarasi >4) {soruNumarasi=0;}
                                   // seciliButon.add(yanlisIconu) ;
                            } );
                              },
                        ))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.green[400],
                          child: Icon(Icons.thumb_up, size: 30.0),
                          onPressed: () {

                            bool dogruYanit = soruBankasi[soruNumarasi].soruYaniti;


                            setState(() {
                              if(dogruYanit==true) { seciliButon.add(dogruIconu);}
                              else {seciliButon.add(yanlisIconu);}


                              soruNumarasi= soruNumarasi+1;
                              if( soruNumarasi >4) {soruNumarasi=0;}
                             // seciliButon.add(dogruIconu);
                            });


                          },
                        ))),
              ])),
        )
      ],
    );
  }
}

const Icon yanlisIconu= Icon(Icons.accessible_forward_outlined,color: Colors.black87,);  // BİR KEZ TANIMLAYIP DAHA
                                                                                   // DEĞİŞTİRMEYE GEREK
                                                                                   // DUYMAYACAGIM Bİ VARIABLE
const Icon dogruIconu =Icon(Icons.accessibility_new_sharp,color: Colors.green);


class Soru {

  String soruMetni;
  bool soruYaniti;

  Soru({required this.soruMetni,required this.soruYaniti});
}