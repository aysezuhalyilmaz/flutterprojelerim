double toplamaFonksiyonum (double sayi1,double sayi2) {
  return sayi1+ sayi2 ;

}
 void main () {
  print(toplamaFonksiyonum(5.3, 4.0));
  bool servisKullanirMi = true ;
  double kilo = 60.4 ;
  List haftalikCalismaSaati = [43,65,45,87];

  dynamic buBirDynamicTipDegiskendir ;
       buBirDynamicTipDegiskendir= 12;
       print(buBirDynamicTipDegiskendir);

       buBirDynamicTipDegiskendir = 'zuhal';
       print(buBirDynamicTipDegiskendir);

  print(haftalikCalismaSaati[2]);


  // $ İŞARETİ KULLANIMI
  String ad = 'ayse';
  int yas = 22;
  String text = 'avrupalılastırabildiklerimizden';

  print('''
  elemanın adı $ad 
  yaşı $yas 
  kilosu ise $kilo 
  birinci hafta ${haftalikCalismaSaati[0]} saat çalışmıştır ''');

  print ('textin karakter uzunlugu ${text.length}');
  // üclü tırnak veya \n işaretiyle alt satıra print edebiliriz.




 }
 // double = float
//deneme
















