/*
String : Metinsel ifadeler için kullanılan veri türüdür.
Çift tırnak veya tek tırnak ile belirilebilir.
İki stringi birleştirmek için + operatörü kullanılır.
Birden fazla satır süren metinsel ifadeleri birleştirirken + kullanmasak da olur. 
  'ifade 1'
  'ifade 2' olarak kullanilabilir.
 
Interpolation : string ifade içinde baska bir string ifadeyi $ifade olarak kullabiliriz. Böylece + kullanmak gerekmez.
Eğer ifade birden fazla alana sahipse ${ifade.method} şeklinde kullanılır.
Ayrıca interpolation dieğer veri türleri için de geçerlidir.
*/
void main(List<String> args) {
  int yas = 34646546556546;
  double ortlama = 5545454.6;
  num yil = 1988;

  print(yas);
  print(ortlama);

  String ad = "hasan";

  print(ad);
  print(ad + "nin sevdiği renkler");
  print(ad + "nin yas1");

  bool erkekMi = true;
  bool issizMi = false;

  print(erkekMi);
  print(issizMi);

  var okul = "ege";
  var okulNumarasi = 1953;
  var kedisiVarMi = true;

  print(okulNumarasi);
}
