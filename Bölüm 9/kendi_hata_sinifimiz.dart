void main(List<String> args) {
  try {
    Ogrenci emre = Ogrenci(-5);
    print(emre.yas);
  } on AgeException catch (e) {
    print(e.mesaj);
  } finally {
    print("Program bitti");
    try {
      Ogrenci emre = Ogrenci(-5);
      print(emre.yas);
    } catch (e) {
      print(e);
    }
  }
}

class AgeException implements Exception {
  String mesaj;

  AgeException({this.mesaj = "Age exception"});

  @override
  String toString() {
    return "Hatanın toString metotu çalıştı";
  }
}

class Ogrenci {
  int yas = 0;
  Ogrenci(int yas) {
    if (yas < 0) {
      throw AgeException(mesaj: "AgeException - yaş negatif olamaz");
    } else {
      this.yas = yas;
    }
  }
}
