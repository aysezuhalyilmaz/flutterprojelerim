void main (){
 //var birinciTelevizyon = new Televizyon();
 Televizyon birinciTelevizyon = new Televizyon(ekranBoyutu: 185, modelAdi: 'enn yeni model');
 Televizyon ikincitTelevizyon = new Televizyon(ekranBoyutu: 1685,modelAdi: 'fiyat performans model');


  //  print(" ${birinciTelevizyon.ekranBoyutu}");
  // print("$birinciTelevizyon");                   // Instance of 'Televizyon'
  birinciTelevizyon.modelAdi= "beyaz tv";        // nesne özellikleri değişebilir.  önemli olan en son ne yazdıgın !!
  // print("${birinciTelevizyon.modelAdi}");

  // print("birinci televizyonun ekran boyutu ${birinciTelevizyon.ekranBoyutu} ikinci tvninki ise ${ikincitTelevizyon.ekranBoyutu}dur  DUR BURADA");

birinciTelevizyon.cihazBilgisi();
ikincitTelevizyon.cihazBilgisi();


}
class Televizyon {

  int ekranBoyutu= 105;
  String modelAdi = "Flut TV";

  Televizyon({ required int this.ekranBoyutu,required String this.modelAdi }){   // named arguments require label       // CONSTRUCTOR YAPISI


  }

  void sesiAc(){
  print("ses acıldı");
  }


  void cihazBilgisi(){

    print("$ekranBoyutu,$modelAdi");




  }

}
