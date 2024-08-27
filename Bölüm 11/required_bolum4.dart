import 'dart:math';

/**
 * Dartdaki isimlendirilmiş parametreler varsayılan opsiyoneldir, tanımlanması kullanıcıya bağlıdır. Bu yüzden kullanıcı tarafından atanmazlarsa null değer alırlar ki bu kabul edilemez. Bu yüzden parametrelerin veri tiplerini tanımlarken Strint?, int? gibi nullable tiplerle belirtmeliyiz.
 * 
 * Bunun dışında tüm parametrelere varsayılan değerler atanarak de sorun çözülebilir.
 * 
 * Son çözüm ise required kullanarak bu parametlerlerin mutlaka girilmesi sağlanabilir.
 */

int ucSayiTopla({required int ilk, required int ikinci, required int ucuncu}) {
  return ilk + ikinci + ucuncu;
}

void main(List<String> args) {
  final toplam = ucSayiTopla(ilk: 1, ikinci: 2, ucuncu: 5);
  final toplam2 = ucSayiTopla(ilk: 1, ikinci: 2, ucuncu: 5);
  //final toplam3 = ucSayiTopla(); olmaz
}
