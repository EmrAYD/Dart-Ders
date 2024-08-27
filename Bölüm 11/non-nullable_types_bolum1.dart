/**
 * Dart varsayılan olarak hiç bir değişkene null değer atanmasına izin vermez. Buna dart non-nullabla tip denir. Bir değişken tanımlayıp uygun veriyi atamazsanız size uyarı verecektir. Bu uyarıda değişkene ilk değeri atamanız istenecektir. Böylece program çalışırken hiçbir non-nullable bir değişken null değeri göstermez.
 * 
 * Bunu istemiyorsanız veri tipinin sonuna ? koyarsınız. Böylece değişkende null değer saklanabilir. Bunlar da aslıda yeni bir ver tipidir. ? koyarak Nullable type oluşturmuş olursunuz.
 */

void main(List<String> args) {
  //nullable
  int? a;
  a = null;
  print("a değişkeninin değeri: $a");
  //print(a + 2); null + 2 çalışmaz
}
