/*
bazı durumlarda değişmez değerlere ihtiyaç duyabiliriz. bir değer atadıktan sonra bu değerin
sonradan değiştirilmesini istemiyorsak final ve const anahtar kelimeleri ile değişkenlerimizi tanımlarız.

kullanım ve amaçları aynı olan bu iki kavramın farkı :
final : değer atandıktan sonra, bellekte yer ayrılması sadece erişilirse olur
const : bu da aslında final'dir ama derleme anında değer atanır ve bellekte yeri ayrılır, hiç kullanılmasa bile... 

burada veri türü belirtilebilir ama isteğe bağlıdır, yani belirtilmese de olur.

En önemli fark ise instance değişkenler sadece final olarak tanımlanır, const ile tanımlanamaz.
const ile tanımlanması için static const olmalıdır.

 */
void main(List<String> args) {
  var str = "Emre";
  str = "Aydoğdu";

  final String str2 = "Emre";
  //str2 = "Aydoğdu"; olmaz

  const String str3 = "Emre";
  //str3 = "Aydoğdu"; olmaz

  final tarih = DateTime.now(); //Compile ettikten sonra belli
  //const tarih2 = DateTime.now();//Compile etmeden önceden belli

  final liste = [1, 2, 3];
  final liste2 = [1, 2, 3];
  if (liste == liste2) {
    print("Eşit");
  } else {
    print("Eşit değil");
  }

  liste.add(4); //ekleyebiliriz ama baştan yeni bir liste oluşturamayız
  liste2.add(8);

  const liste3 = [1, 2, 3];
  const liste4 = [1, 2, 3];
  if (liste3 == liste4) {
    print("Eşit");
  } else {
    print("Eşit değil");
  }

  //liste3.add(4); hem ekleyemeyiz hem de başka bir liste oluşturamayız
}
