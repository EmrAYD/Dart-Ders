import 'dart:io';

void main(List<String> args) {
  print("Anne çocuğu ekmek almaya yollar");
  print("Çocuk ekmek almak için evden çıkıp bali çeker");
  Future<String> sonuc = uzunSurenIslem();

  sonuc.then((String value) => print(value)).catchError((hata) {
    print(hata);
  }).whenComplete(() => print("Ekmek alma operasyonu bitti"));

  print("Peynir zeytin hazırlanır");
  print("Kahvaltı hazır!");
}

Future<String> uzunSurenIslem() {
  Future<String> sonuc = Future.delayed(Duration(seconds: 2), () {
    return ("Çocuk ekmekle eve gelir");
    //throw Exception("Bakkalda ekmek kalmamış");
  });
  return sonuc;
}
