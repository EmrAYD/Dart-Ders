/**
 * Map yapısı da set gibi sırasız bir şekilde elemanları saklayan bir koleksiyon öğesidir.
 * Bu yapıyı listelerden ve setten ayıran özellik ise elemanları key-value olarak saklamasıdır.
 * Herhangi bir veri türü kullanılabilir ama burada önemli olan key değerlerin unique yani eşsiz olması gerekmektedir.
 * 
 * Map yapısını sözlüğe benzetebiliriz. Tıpkı sözlük gibi birbirden farklı elemanları içerir.
 * Sabit uzunlukta değildir, dinamik uzunluğa sahiptir.
 */
void main(List<String> args) {
  Map<String, int> alanKodlari = {"Ankara": 312, "Bursa": 224, "İstanbul": 212};
  print(alanKodlari);
  print(alanKodlari["Bursa"]);

  Map<String, dynamic> emre = {
    "Soyad": "Aydoğdu",
    "yaş": 19,
    "Bekar mı": false
  };
  print(emre["yaş"]);

  Map<String, dynamic> deneme = Map();
  Map<String, dynamic> deneme2 = {};

  deneme2["yaş"] = 39;

  for (var i in emre.keys) {
    print(i);
    print(emre[i]);
  }

  for (var i in emre.values) {
    print(i);
  }

  for (var i in emre.entries) {
    print("Key: ${i.key} Değeri: ${i.value}");
  }

  if (emre.containsKey("yaş")) {
    print("Bulunan yaş değeri: ${emre["yaş"]}");
  }
}
