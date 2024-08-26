/**
 * Higher order functions : bir fonksiyonu parametre olarak alan veya geriye fonksiyon döndüren fonksiyonlardır.
 * Tabi ikisi aynı anda da yapabilir.
 * 
 */
void main(List<String> args) {
  List<int> liste = [1, 2, 3];
  // liste.forEach((element) {
  //   print("Element: $element");
  // });
  liste.forEach(callBack);

  kfe(liste, (int deger, int index) {
    print("Değer: $deger ve index: $index");
  });
}

void kfe(List<int> liste, Function callBack) {
  for (var i = 0; i < liste.length; i++) {
    callBack(liste[i], i);
  }
}

void callBack(int element) {
  print("Element: $element");
}
