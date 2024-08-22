/*
1- Şehirleri tutan bir liste oluşturun, 4 tane il ekleyip sırasıyla ekrana yazdırın
2- Keyleri string, değerleri dynamic olan bir map oluşturun. Bu map yapısında bilgisayarınızın işlemci çekirdek sayısı, ram miktarı ve ssd olup olmadığı bilgisini tutun ve ekrana yazdırın.
3- Her bir elemanında keyleri string, value'leri dynamic map olan bir liste oluşturun.
Bu listedeki her eleman il adını, ilçe sayısını,plaka kodunu tutsun.
sonrasında da bu listeyi okunaklı bir şekilde yazdırın
Örenk 1. elemanında bulunan il ankara, plaka kodu 06, ilçe sayısı 10
4- 5 elemanlı iki farklı liste oluşturun. Elemanlar 0-50'ye rastgele şekilde oluşturulsun BU elemanları tek bir listeye aktarın
oluşan son listenin elemanlarının karelerini tutan set yapısı oluşturup ekrana yazdırın
5- Kullanıcıdan aldığımız integer pozitif sayıları bir listede tutun, kullanıcı 0 değerini girdiğinde girilen sayıların ortalamasını ekrana yazdırın.
 */

import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  //Cevap 1
  var sehirler = ["Denizli", "Ankara", "İstanbul", "İzmir"];
  for (var i = 0; i < sehirler.length; i++) {
    print("${i + 1}. Şehir: ${sehirler[i]}");
  }

  //Cevap 2
  var bilgisayarBilgileri = <String, dynamic>{
    "işlemci": 10,
    "ram": "16 GB",
    "SSD": true
  };
  for (var element in bilgisayarBilgileri.keys) {
    print("$element:${bilgisayarBilgileri[element]}");
  }

  //Cevap 3
  var iller = <Map<String, dynamic>>[];
  var il1 = <String, dynamic>{"il_adi": "Denizli", "İlce_sayi": 6, "plaka": 20};
  var il2 = <String, dynamic>{"il_adi": "Ankara", "İlce_sayi": 10, "plaka": 06};
  var il3 = <String, dynamic>{
    "il_adi": "İstanbul",
    "İlce_sayi": 16,
    "plaka": 34
  };

  iller.add(il1);
  iller.add(il2);
  iller.add(il3);
  for (var i = 0; i < iller.length; i++) {
    print("${i + 1}. ilin ");
    for (var element in iller[i].entries) {
      print("${element.key}: ${element.value}");
    }
  }

  //Cevap 4
  var list1 = List.filled(5, 0);
  var list2 = List.filled(5, 0);
  for (var i = 0; i < 5; i++) {
    list1[i] = Random().nextInt(50);
    list2[i] = Random().nextInt(50);
  }
  var slist = [...list1, ...list2];
  var set = <int>{};
  print(slist);
  for (var i in slist) {
    set.add(i * i);
  }
  print(set);

  //Cevap 5
  var list = <int>[];
  int secenek = 0;
  do {
    print("Lütfen sayı giriniz, çıkış için 0");
    secenek = int.parse(stdin.readLineSync()!);
    if (secenek != 0) {
      list.add(secenek);
    }
  } while (secenek != 0);
  ortalama(list);
}

void ortalama(List<int> a) {
  var sonuc = 0;
  for (var i = 0; i < a.length; i++) {
    sonuc += a[i];
  }
  print(sonuc / a.length);
}
