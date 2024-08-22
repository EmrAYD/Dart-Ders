/**
 * SORU 1 : 3 tane double değişken olusturup bunların ortalamasını yazdıran programı yazınız
 * SORU 2 : Kenarlarını girdiğiniz üçgenin çeşidini yazdıran programı yazınız.
 * SORU 3 : Vize ve final notlarını alıp dersi geçip geçmediğini bulan programı yazınız
 * (geçme notu alt değeri = 50, vizenin %40 finalin %60ı alınır.)
 * 
 * SORU 4: Kendi adınızı ekrana 5 kere yazdıran uygulamayı tüm döngü ifadeleriyle yazınız.
 * SORU 5: 1'den 100'e kadar olan ve 15 ile tam bölünen sayıların karelerini ekrana yazdırınız. 
 * SORU 6: Tanımlanan int bir sayının faktoriyelini bulan uygulamayı yazınız.
 */

void main(List<String> args) {
  //1.cevap
  double s1 = 10, s2 = 20, s3 = 30;
  print("$s1, $s2, ve $s3 sayılarının ortalaması: ${(s1 + s2 + s3) / 3}");

  //2.cevap
  int k1 = 6, k2 = 6, k3 = 6;
  if ((k1 == k2) && (k1 == k3)) {
    print("Girdiğiniz üçgen eşkenar");
  } else if ((k1 != k2) && (k1 != k3)) {
    print("Girdiğiniz üçgen çeşitkenar");
  } else {
    print("Girdiğiniz üçgen ikizkenar");
  }

  //3.cevap
  double vize = 40;
  double finalp = 30;
  double hesap = vize * 0.4 + finalp * 0.6;
  if ((hesap) >= 50) {
    print("Teprikler dersi $hesap ile geçtiniz");
  } else {
    print("Qardeş $hesap alınır mı geçemedin qardeş");
  }

  //4. cevap
  for (var i = 0; i < 5; i++) {
    print("${i + 1}. döngü: Emre");
  }
  print("******************");
  int sayac1 = 0;
  while (sayac1 < 5) {
    print("${sayac1 + 1}. döngü: Emre");
    sayac1++;
  }
  print("******************");
  int sayac2 = 0;
  do {
    print("${sayac2 + 1}. döngü: Emre");
    sayac2++;
  } while (sayac2 < 5);

  //5. cevap
  for (var i = 1; i <= 100; i++) {
    if (i % 15 == 0) {
      print("15 e tam bölünebilien $i nin karesi: ${i * i}");
    }
  }

  //6. cevap
  int sayi = 5;
  int sonuc = 1;
  for (var i = 1; i <= sayi; i++) {
    sonuc *= i;
  }
  print("$sayi sayısının faktöriyeli: $sonuc");
}
