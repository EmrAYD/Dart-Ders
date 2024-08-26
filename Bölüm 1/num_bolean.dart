/*
num : tamsayı veya ondalıklı bir ifadeyi saklayabilir
int = tamsayıları saklarken kullanılan veri türüdür 
hexadecimal değerleri de saklayabilir. 0xAABBCC

double = ondalıklı ifadeler için kullanılan veri türüdür. 
exponents değerli saklayabilir, 1.42e5

var anahtar kelime ile de tamsayı veya ondalıklı ifade saklanabilir.var olarak int deger atandıysa sonrasında double değer atanamaz
varsayılan değerleri null'dır. Yani bu değişkenlere bir veri atamadan kullanırsak null sonucunu alırız.

boolean = true/false değerleri alır
*/
void main(List<String> args) {
  int yas = 19;
  print(yas);
  yas = 20;
  print(yas);

  num yil = 2005;
  print(yil);

  double sayi = 52;
  print(sayi);

  int kilo = 76.4.toInt();
  print(kilo);

  var sayi2 = 56;

  int numara;
  numara = 9;
  print(numara + 9);

  int? s1 = null;
  s1 = 9;
  print(s1 + 5);

  int hexadecimalSayi = 0xAABBCC;
  print(hexadecimalSayi);
}
