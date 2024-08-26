/*

Kısa method Fat Arrow : tek satırlık statement içeren methodlarımızı kısa bir şekilde göstermeye yarar.
Bu kullanımda süslü parantez ve return anahtar kelimeleri kullanılmaz.

 */
import 'dart:math';

void main(List<String> args) {
  sayilariTopla();

  int fark = sayilariCikar(15, 4);
  print("Fark:$fark");

  print(sayilariCarp(12, 6));

  print(maxOlaniBul(14, 9));

  print(minOlaniBul(4, 7));
}

void sayilariTopla() {
  int sayi1 = 10, sayi2 = 5;
  print("Toplam: ${sayi1 + sayi2}");
}

int sayilariCikar(int s1, int s2) {
  return s1 - s2;
}

int sayilariCarp(int s1, int s2) => s1 * s2;

int maxOlaniBul(int s1, int s2) => (s1 < s2) ? s2 : s1;

int minOlaniBul(int s1, int s2) => (s1 < s2) ? s1 : s2;
