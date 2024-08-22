/*
Sorular
1- Adınızı, soyadınızı ve yaşınızı farklı değişkenlerde sakalyıp, ekrana 
"Benim adım emre aydoğdu, yaşım 19 ve tüm ismimdeki karakter sayısı 11'dir" yazdırın

2- Bir üçgenin tüm kenarlarını değişkenlerde sakalyıp çevresini ekrana yazdırın 
örnek birinci kenrarı 3, ikinci kenarı 4, içüncü kenrarı 5 olan üçgenin çevresi 12 dir
*/

//Cevaplar

void main(List<String> args) {
  String ad = "Emre", soyad = "Aydoğdu";
  int yas = 19;
  print(
      "Benim adım $ad $soyad, yaşım $yas ve tüm ismimdeki karakter sayısı ${ad.length + soyad.length}'dir");

  int k1 = 3, k2 = 4, k3 = 5;
  print(
      "birinci kenarı $k1, ikinci kenarı $k2, üçüncü kenarı $k3 olan üçgenin çevrsi ${k1 + k2 + k3} dir");
}
