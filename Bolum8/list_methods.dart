void main(List<String> args) {
  Person emre = Person(3, "Emre");
  Ogrenci hasan = Ogrenci(1, "Hasan", 10);
  Person ayse = Ogrenci(8, "Ayşe", 8);
  var yunus = Person(6, "Yunus");
  var ali = Ogrenci(7, "Ali", 4);

  List<Person> tumOgrenciler = [emre, hasan, ayse, yunus, ali, emre, ali];

  tumOgrenciler.sort((ogr1, ogr2) {
    if (ogr1.id < ogr2.id) {
      return -1;
    } else if (ogr1.id > ogr2.id) {
      return 1;
    } else
      return 0;
  });
  print(tumOgrenciler);

  var mapList = tumOgrenciler.map((Person e) => "${e.isim}").toSet();
  print(mapList);

  tumOgrenciler.add(yunus);
  tumOgrenciler.addAll([ayse, ali]);

  print(tumOgrenciler);

  bool sonuc = tumOgrenciler.any((Person element) => element.id > 3);
  print(sonuc);

  Map<int, Person> yeniMap = tumOgrenciler.asMap();
  print(yeniMap[0]!.isim);

  print(tumOgrenciler.contains(emre));

  bool sonuc2 = tumOgrenciler.every((element) => element.isim.length > 0);
  print(sonuc2);

  var bulunan = tumOgrenciler.firstWhere((element) => element.id == 1);
  print(bulunan);
}

class Person {
  int id = 0;
  String isim = "";

  Person(this.id, this.isim);
  @override
  String toString() {
    return "id: $id ve isim:$isim\n";
  }
}

class Ogrenci extends Person {
  int alinanDers = 0;
  Ogrenci(super.id, super.isim, this.alinanDers);
  @override
  String toString() {
    return "id: $id ve isim:$isim ve alınan ders sayısı: $alinanDers\n";
  }
}
