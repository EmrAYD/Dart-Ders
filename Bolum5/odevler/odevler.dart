/*
Soru 1  CemberDaire isimli sınıf oluşuturun. Bu sınıfın yarıçap alan kurucusu olmalı. Ayrıca çevre ve alanını hesaplayan metotlar olmalı (PI sayısı 3.14 alın)

Soru 4  Ogrenci isimli sınıf oluşturun. Bu sınıfta oğrencinin idsi ve not değeri tutulmalı. 100 elemanlı bir listede id ve not değerlerini rastgele oluşturarak bu öğrencileri saklayın ve bu öğrencileri yazdıran metotu yazın.
*/

import 'dart:math';

import 'cember_daire.dart';
import 'ogrenci.dart';

void main(List<String> args) {
  //Cevap 1
  CemberDaire c1 = CemberDaire(4);
  print("Alan: ${c1.alan()}");
  print("Çevre: ${c1.cevre()}");

  //Cevap 2
  Ogrenci ogr1 = Ogrenci(id: 5, not: 10);
  List<Ogrenci> ogrlist = List.filled(100, Ogrenci(id: 1, not: 1));
  ogrdoldur(ogrlist);
  for (Ogrenci ogr in ogrlist) {
    print(ogr.toString());
  }
  print("Tüm öğrnecilerin not ortalaması: ${ogrort(ogrlist)}");
}

void ogrdoldur(List<Ogrenci> a) {
  for (var i = 0; i < a.length; i++) {
    a[i] = Ogrenci(id: Random().nextInt(1000), not: Random().nextInt(100));
  }
}

double ogrort(List<Ogrenci> list) {
  int toplam = 0;
  for (Ogrenci element in list) {
    toplam += element.not;
  }
  return toplam / 100;
}
