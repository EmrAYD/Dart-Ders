/**
 * Generic tipleri belirtirken de nullable ve non-nullable kavramları geçerlidir.
 * Burda önemli olan ? nereye koyduğumuzdur.
 * 
 * Liste null olabilir diyorsak List<String>?, listenin bazı elemanları null olabilir diyorsak List<String?> olarak belirtebiliriz.
 */
void main(List<String> args) {
  List<String> stringListesi = ["Emre", "Hasan", "Ali"];
  List<String>? nullOlabilecekStringListesi;
  List<String?> nullOlabilecekStringleriTutanListe = ["Emre", null, "Hasan"];

  print("String listesi $stringListesi");
  print("Null olabilecek liste $nullOlabilecekStringListesi");
  print(
      "Null olabilecek stringleri tutan liste $nullOlabilecekStringleriTutanListe");
}
