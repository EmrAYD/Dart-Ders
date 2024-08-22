class Ogrenci {
  int id = 0;
  String isim = "";

  Ogrenci(this.id, this.isim) {
    print("Varsayılan kurucu çalıştı");
  }
  Ogrenci.idsiz(this.isim) {
    print("İdsiz kurucu çalıştı ");
  }
  factory Ogrenci.factori(int id, String isim) {
    if (id < 0) {
      return Ogrenci(5, isim);
    } else
      return Ogrenci(id, isim);
  }
}

void main(List<String> args) {
  Ogrenci Emre = Ogrenci(5, "Emre");
  Ogrenci hasan = Ogrenci.idsiz("Hasan");
  Ogrenci ayse = Ogrenci.factori(-9, "Ayşe");
  print(ayse.id);
  print(ayse.isim);
}
