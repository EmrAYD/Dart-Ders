/*
Lambda: ismi olmayan fonksiyonlardır. dartta her fonksiyon aslında bir nesnedir.
*/

void main(List<String> args) {
  Function fonksiyon1 = (int a, int b) {
    //Lambda (isimsiz fonksiyon)
    print(a + b);
  };

  fonksiyon1(5, 8);

  var f2 = (int s) => s * 2;

  var f3 = (int s2) {
    return s2 * 2;
  };
  print(f2(5));
}

//Normal fonksiyon
void sayilariTopla(int a, int b) {
  print(a + b);
}
