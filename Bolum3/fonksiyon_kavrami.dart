/*
Fonksiyon - method kavramı sayesinde problemlerimizi küçük alt problemlere parçalayarak çok daha okunaklı, hata bulması kolay
uygulamalar geliştirebiliriz.

Bir uygulama geliştirirken, bir problemi çözerken o problemde belli bir işi yapan kodları methodlara bölmemiz gerekir.
Bunun için method veya fonksiyon oluşturabiliriz.

Methodlar parametre alabilir veya herhangi bir parametreye sahip olmayabilir.
Methodlar geriye bir değer dönderebilir. Değer döndürmeyen method tanımlarının başına void yazılır.
Dart dilinde return ve method geri döndürme veri tipi değeri opsiyoneldir, yani belirtmek zorunda değiliz.(Belirtilmesi önerilir)



 */
void main(List<String> args) {
  cevreyiHesapla();

  alanHesapla1(5, 10);
  int alan = alanHesapla2(7, 10);
  print("Alanımız: $alan");
  print("Alanımız: ${alanHesapla2(7, 10)}");

  int hacim = hacimHesapla(8, 9, 10);
  print("Hacim: $hacim");
  print(hacimHesapla(8, 9, 10));
}

//Parametresiz fonksiyon
void cevreyiHesapla() {
  int en = 5, boy = 10;
  int cevre = (en + boy) * 2;
  print(cevre);
}

//Parametreli fonksiyon
void alanHesapla1(int s1, int s2) {
  print(s1 * s2);
}

//Retürnlü fonksiyon
int alanHesapla2(int s1, int s2) {
  return s1 * s2;
}

int hacimHesapla(int s1, int s2, int s3) {
  return s1 * s2 * s3;
}
