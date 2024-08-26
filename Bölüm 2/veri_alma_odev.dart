/* 
Örenk 1: iki notu girilen  öğrencinin  ortalamasını bularak sonucu ekranda gösteren algoritmayı yapın

Örnek 2: Fiyatı girilen  ürüne %18 kdv ekleyerek son fiyatı hesaplayan algoritmayı yazınız
*/
import 'dart:io';

void main(List<String> args) {
  print("1. notunu girin");
  int n1 = int.parse(stdin.readLineSync()!);
  print("2. notunu girin");
  int n2 = int.parse(stdin.readLineSync()!);
  print("Not ortalamanız: ${(n1 + n2) / 2}");

  print("Fiyatı giriniz");
  int fiyat = int.parse(stdin.readLineSync()!);
  print("Kdv ekli fiyat: ${fiyat * 1.18}");
}
