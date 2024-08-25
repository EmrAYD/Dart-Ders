/**
 * Exception Istisna : İstisna, programın çalışması sırasında ortaya çıkan bir sorundur. 
 * Bir istisna, bir çok değişik nedenden dolayı meydana gelebilir.
 * 
 * Bir metot, try ve catch anahtar kelimelerinin kombinasyonunu kullanarak bir istisnayı yakalayabilir. 
 * Try/catch bloğu, istisna oluşması muhtemel kodun etrafına yerleştirilir.
 * Ayrıca on ExceptionName{} blogunu cıkacak istisnanın adını biliyorsak kullabiliriz.
 * Finally blogu istisna çıksın çıkmasın calısacak olan method blogudur.
 * 
 */
void main(List<String> args) {
  print("Program başladı");

  try {
    int sayi = 100 ~/ int.parse("Emre");
    print(sayi);
  } on IntegerDivisionByZeroException {
    print("Bölen 0 olamaz");
  } on FormatException catch (e) {
    print(e.message);
    print(e.source);
  } catch (e) {
    print("Hata çıktı ${e}");
  } finally {
    print("İşlem bitti");
  }

  print("Program bitti");
}
