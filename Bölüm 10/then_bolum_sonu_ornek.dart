/**
 * Soru
 * Bir fonksiyon yazın bu foksiyon aldığı id paramrtresine göre bir kullanıcı getirsin. Bu map yaspısında username ve id bilgisi olması yeterlidir.
 * 
 * getirilen kişi bilgisindeki username değerini kullanarak kişinin kurslarını getiren bir fonksiyon yazın. Bu fonksiyon 4 saniye sürecektir ve username değerine ait olan kursları içinde kursun adları olan bir liste olarak döndürecektir.
 * 
 * 
 * son olarak da kurslar listesindeki ilk elemanı parametre olarak alan ve bu kursa ait bir yorumu döndüren bir fonksiyon yazın. Bu fonksiyon 1 saniye sürecektir.
 */
void main(List<String> args) {
  idyeGoreUserGetir(5).then((Map value) {
    print(value);
    usernameGoreKurslariGetir(value["username"]).then((List kurslarListesi) {
      print(kurslarListesi);
      String ilkKurs = kurslarListesi.first;
      KursunIlkYorumunuGetir(ilkKurs).then((String yorum) => print(yorum));
    });
  });
}

Future<String> KursunIlkYorumunuGetir(String kursAdi) {
  return Future<String>.delayed(Duration(seconds: 1), () {
    return "Bu kurs çok güzel";
  });
}

Future<List<String>> usernameGoreKurslariGetir(String username) {
  print("$username kullanıcısının kursları getiriliyor");
  return Future<List<String>>.delayed(Duration(seconds: 4), () {
    return ["flutter", "kotlin", "javascript"];
  });
}

Future<Map<String, dynamic>> idyeGoreUserGetir(int id) {
  print("$id idli kullanıcı getiriliyor");
  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
    return {"username": "EmreAYD", "id": id};
  });
}
