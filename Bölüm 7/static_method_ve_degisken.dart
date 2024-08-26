/*
Sınıflarımızda nesne üretmeden bazı değişkenlere ve methodlara erişmek isteyebiliriz. burada karsımıza static kavramı cıkar.

Static kullanarak nesne değil sınıf değişkenleri ve methodları olusturabilirz.
Bir sınıfta tanımlanan method ve değişkenlere erişirken mutlaka nesne üretmemiz gerekirdi. Ama biz bunları static olarak tanımlarsak
artık nesne üretmeden bu değerlere erişebilir ve kullanabiliriz. Artık onlar nesnelerin değil sınıfın method ve değişkenleridir.

ayrıca statik degiskenler kullanılana kadar deger almazlar, bellekte yer ayrılmaz
statik methodların içinde this anahtar kelimesi kullanılmaz.

 */

void main(List<String> args) {
  Matematik m1 = Matematik(50, 20);
  m1.topla();
  m1.cikar();

  Matematik m2 = Matematik(30, 10);
  m2.topla();
  m2.cikar();

  print(Matematik.PI);
  Matematik.sinif();
  print("toplam işlem sayısı: ${Matematik.toplamIS}");
}

class Matematik {
  //instance varible
  int birincisayi = 0;
  int ikincisayi = 0;

  //class variable
  static double PI = 3.14;
  static void sinif() {
    print("Ben matematik sınıfıyım");
  }

  static int toplamIS = 0;

  Matematik(this.birincisayi, this.ikincisayi);

  void topla() {
    toplamIS++;
    print("Toplam:${birincisayi + ikincisayi}");
  }

  void cikar() {
    toplamIS++;
    print("Fark:${birincisayi - ikincisayi}");
  }
}
