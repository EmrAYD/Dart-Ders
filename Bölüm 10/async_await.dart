void main(List<String> args) async {
  print("internetten kişi verisi getirilecek");
  kisiIleIlgiliIslemler();
  print("Başka işlemler yapılacak");
  print("işlem bitti");
}

void kisiIleIlgiliIslemler() async {
  String kisi = await kisiVerisiniGetir();
  print(kisi.length);
}

Future<String> kisiVerisiniGetir() {
  return Future<String>.delayed(Duration(seconds: 3), () {
    return "kişi adı: Emreve id:100";
  });
}
