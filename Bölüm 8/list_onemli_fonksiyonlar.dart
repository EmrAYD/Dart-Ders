void main(List<String> args) {
  Person emre = Person(3, "Emre");
  Ogrenci hasan = Ogrenci(1, "Hasan", 10);
  Person ayse = Ogrenci(8, "Ayşe", 8);
  var yunus = Person(6, "Yunus");
  var ali = Ogrenci(7, "Ali", 4);

  List<Person> tumOgrenciler = [emre, hasan, ayse, yunus, ali];

  var list1 = List<Ogrenci>.filled(5, Ogrenci(0, "", 0));
  var listeFrom = List<Ogrenci>.from(tumOgrenciler.whereType<Ogrenci>());
  var listeOf = List<Ogrenci>.of(tumOgrenciler.whereType<Ogrenci>());

  var listGenerate =
      List<Ogrenci>.generate(5, (index) => Ogrenci(index, "$index", index * 2));
  print(listGenerate);

  print(listeOf);
  print(listeFrom);

  var degistirilemez = List.unmodifiable([0, 1, 2]);
  //degistirilemez.add(5); çalışmaz

  print(degistirilemez.reversed);
}

class Person {
  int id = 0;
  String isim = "";

  Person(this.id, this.isim);
  @override
  String toString() {
    return "id: $id ve isim:$isim";
  }
}

class Ogrenci extends Person {
  int alinanDers = 0;
  Ogrenci(super.id, super.isim, this.alinanDers);
  @override
  String toString() {
    return "id: $id ve isim:$isim ve alınan ders sayısı: $alinanDers";
  }
}
