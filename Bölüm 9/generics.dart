/**
 *Dart optionally typed bir dildir. Yani veri tiplerini belirtmek isteğe bağlıdır.
 * Sürekli kullanılan koleksiyon yapıları (liste,map,set) varsayılan olarak heterojendir. Yani aynı koleksiyon yapısında farklı türde verileri saklayabilirsiniz. Ama yapmalı mıyız?
 * 
 * Generix tipler saysesinde bir yapıda hangi tür verilerin olacağını söyleriz. Böylece bu yapılar type-safe olur, compile time da hatalı ver girişi tespit edilir ve bize hatamız söylenir. Böylece runtimeda çıkabilecek hataların önüne geçilir.
 * 
 * Generic tipler <> içinde belirtilir. List<String> ifadesi bu listede sadece String veriler olacağı anlamı taşır. Bu listeye String dışında bir veri eklenirse daha programı çalıştırmadan hata alırız ve düzeltmemiz gerekir. Böylece daha güvenle kod yazmış oluruz.
 * 
 * Generic'ler dartta bulunan çoğu yapıda zaten vardır. List, map. Future, Stream gibi... Kendi oluşturduğumuz sınıflarda ve metotlarda da genericleri uygulayabilirsiniz. Böylece hem daha güvenli kod yazmış olursunuz hem de benzer amaçları gerçekleştiren kod yaplarını tek bir yapıda toplayabilirsiniz. */

void main(List<String> args) {
  List<String> liste = [];
  liste.add("Emre");
  liste.add("Ahmet");

  yazdir(liste);

  //List<E> ==> Element
  //Map<K, V> ==> Key, Value
  //R ==> Methodların return tipleri için

  //Ogrenci<T extends Insan>
}

yazdir(List list) {
  print(list[1].length);
}
