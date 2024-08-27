/**
 * Sınıflarımızı oluştururken oluşturduğumuz değişkenler(property) için de null safety özellikleri geçerlidir. Bu özellikleri ilk defa uyguladığımızda karışık gelebilir.
 * 
 * Çünkü bu poropertylerin getter ve setter metotları doğrudan veya dolaylı olarak vardır. Bundan dolayı da bu değişkenler aynı scope içinde farklı değerler üretebilirler.Siz bu yapılara her erişim yaptığınızda farklı sonuçlar alabilirsiniz.
 * 
 * Bunun çözümü ise ilgili veriyi bir değişkende saklayıp, getter üzerinden değil değişken üzerinden kontrolleri yapmanızdır.
 */
import 'dart:math';

class MetinUretici {
  String? metin = "Emre";
}

class RastgeleMetinUretici {
  String? deger() {
    if (Random().nextBool()) {
      return "String ifade";
    } else
      return null;
  }

  //int? get yas => 34;
}

void main(List<String> args) {
  final uretici = RastgeleMetinUretici();
  String? sonuc = uretici.deger();

  if (sonuc == null) {
    print("Null değer oldu");
  } else {
    metniYazdir(sonuc);
  }

  MetinUretici m = MetinUretici();
  String? met = m.metin;
  if (met != null) {
    metniYazdir(met);
  }
}

void metniYazdir(String ifade) {
  print(ifade);
}
