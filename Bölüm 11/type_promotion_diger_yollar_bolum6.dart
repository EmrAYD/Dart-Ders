/**
 * Dart dili eğer aynı scope içinde null check yapılırsa nullable değişkenlere non-nullable gibi davranır.
 * 
 * Farklı bir yöntem hata fırlatmak olabilir. Eğer değer null ie hata fırlatırsak return ifadesi çalışmayacak ve fonksiyonumuz null değer döndürmeyecektir.
 */

int karakterSayisiniBul(String? metin) {
  if (metin == null) {
    throw Exception("Metin null");
    //return 0;
  }
  return metin.length;
}

void main(List<String> args) {
  try {
    print(karakterSayisiniBul("Emre"));
  } catch (e) {
    print(e);
  }
}
