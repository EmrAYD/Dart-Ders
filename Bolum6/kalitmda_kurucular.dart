/**
 * Kalıtım özelliğini kullandığımızda kurucu method kullanımları anlatıldı
 * Bir sınıfı extend ettiğimizde alt sınıf nesnesi olusturulmadan önce üst sınıfın kurucusu çalısır.
 * super anahtar kelimesi ile üst sınıfın alanlarına erişip düzenleme yapabiliriz.
 */
void main(List<String> args) {
  Asker emre = Asker("Emre", 19);
  Er hasan = Er("Hasan", 25);
  hasan.memleketDegis("Bursa");
  hasan.selam();
}

class Asker {
  String ad = "Varsayılan";
  int yas = 0;
  String memleket = "Ankara";
  Asker(this.ad, this.yas) {
    print("Asker sınıfının kurucusu çalıştı");
  }
  void selam() {
    print("Merhaba adım $ad ve yaşım $yas");
  }
}

class Er extends Asker {
  Er(String ad, int yas) : super(ad, yas) {
    print("Er sınıfının kurucusu çalıştı");
  }

  void memleketDegis(String ym) {
    super.memleket = ym;
  }

  @override
  void selam() {
    print("Er sınıfından selamlar");
  }
}
