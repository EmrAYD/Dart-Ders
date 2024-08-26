/*
private değişken ve fonksiyonlar: Bir sınıftaki değişken ve methodları bazen erişime kapatmak isteeybiliriz. Bu durumlarda _ işareti ile bunları saklarız.

getter metotlar: sınıf değişkenlerini okumak için kullanılan özel fonksiyonlardır. Bu methodların amacı özellikle private yani dış dünyanın erişimine kapatılmış değişkenlerin gerekli olduğunda okunmasını sağlanaktır.

setter metotlar: sınıf değişkenlerine veri atamak için kullanılır. Bu metotların amacı özellikle private yani dış dünyanın erişimine kapatılan değişkenlere veri aktarmaktır, ayrıca veri ataması yapılırken gerekli olan kontrollerin ve işlemlerin yapılması için kullanılır.
 */

import 'musteri.dart';
import 'veritabani_islemleri.dart';

void main(List<String> args) {
  Musteri m1 = Musteri(200);
  m1.bilgileriYazdir();
  m1.musteriNoAta = 400;
  print(m1.musteriNoSoyle);
  VeriTabaniIslemleri db = VeriTabaniIslemleri();

  bool sonuc = db.baglan();
  if (sonuc) {
    print("bağlandım");
  } else {
    print("bağlanamadım");
  }
}
