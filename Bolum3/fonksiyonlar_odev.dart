/*
Soru 1: Parametre olarak bir tane  int sayı  alan fonksiyon yazınız
Bu fornksiyon aldığı değere kada olan çift  sayıların toplamını  geriye döndürsün

Soru 2: Daire alanını  hesaplayan  fonksiyon u yazınız. PI ssayısı opsiyonel olmalı
Eğer pi sayısı verilmediyse varsayılan 3.14 olarak hesaplanmalı

Soru 3: Bir üçgenin kenarlarını isimlendirilmiş parametre olarak  alan fonksiyon yazınız
Bu fonksiyon Kenar değerine göre bu üçgenin çeşitkenar  ikizkenar  veya eşkenanar  olduğunu
ekrana yazdırsın,geriye bir değer döndürmesin
*/

void main(List<String> args) {
  //Cevap 1
  int c1 = f1(10);
  print("1. sorunun cevabı: $c1");

  //Cevap 2
  double c2 = f2(2);
  print("2. sorunun cevabı: $c2");

  //Cevap 3
  f3(k1: 3, k3: 5, k2: 4);
}

//Cevap 1
int f1(int s1) {
  int toplam = 0;
  for (var i = 0; i < s1; i++) {
    if (i % 2 == 0) {
      toplam += i;
    }
  }
  return toplam;
}

//Cevap 2
double f2(int r, [double pi = 3.14]) {
  return pi * (r * r);
}

//Cevap 3
void f3({int k1 = 0, int k2 = 0, int k3 = 0}) {
  if ((k1 == k2) && (k1 == k3)) {
    print("3. sorunun cevabı: Girdiğiniz üçgen eşkenar");
  } else if ((k1 != k2) && (k1 != k3)) {
    print("3. sorunun cevabı: Girdiğiniz üçgen çeşitkenar");
  } else {
    print("3. sorunun cevabı: Girdiğiniz üçgen ikizkenar");
  }
}
