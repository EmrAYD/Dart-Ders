/**
 * Bir diğer koleksiyon yapısı da Set yapısıdır.
 * List den en önemli farklı elemanları sıralı olarak tutmaz, bu durumda list lerde oldugu gibi indexleri kullanamayız
 * Bir diğer farkı ise bir elemandan sadece bir tane olur yani her bir eleman birbirinden farklıdır.
 * 
 * index olmadan elemanları kontrol etmek için contains methodu kullanılabilir. onun dışında listelerdeki methodlar set için de geçerlidir.
 * 
 */
void main(List<String> args) {
  Set<String> isimler = Set();
  isimler.add("Emre");
  isimler.add("Hasan");
  isimler.add("Ali");
  isimler.add("Emre");
  isimler.add("Emre");
  isimler.add("Fatma");

  bool sonuc = isimler.remove("Emre");
  print("Sonuç: $sonuc");
  if (isimler.contains("Emre")) {}
  for (var i in isimler) {
    print("isim: $i");
  }

  Set<int> numaralar = Set.from([1, 2, 3, 4, 5, 5, 6, 7, 8, 9, 1, 1, 1]);
  for (var i in numaralar) {
    print(i);
  }
  numaralar.clear();
  List<int> ciftSayilar = [0, 2, 4, 6, 8, 10, 8, 6, 4, 2, 0];
  numaralar.addAll(ciftSayilar);
  for (var i in numaralar) {
    print(i);
  }
}
