/**
 * methodlarımıza geçtiğimiz parametrelerin isteğe bağlı olmasını yani verilse de olur verilmese de olur gibi durumlarda
 * süslü ve köşeli parantez kullanırız.
 * Eğer köşeli parantez [] kullanırsak bu ilgili parametrelerin methoda gönderilmesi zorunluluğunu ortadan kaldırır.
 * Eğer süslü parantez {} kullanırsak burda da parametreler isteğe bağlıdır ama bu parametreleri belirtirken sıralama önemini
 * kaybeder ve de parametreleri geçerken isimlerini vermek zorunda kalırız.
 * 
 * Ayrıca method tanımlarında parametrelere = diyerek varsayılan değerler atayabiliriz. Bu değerler sayesinde eğer kullanıcı
 * method parametrelerini atamamışsa bu varsayılan değerler kullanılır.
 */
void main(List<String> args) {
  /* int toplam = sayilariTopla(2, 3);
  int toplam2 = sayilariTopla(2, 7, 9);
  print("Toplam: $toplam");
  print("Toplam: $toplam2"); */
  int toplam = sayilariTopla(9, s2: 5, s1: 8, s3: 8);
  print("Toplam: $toplam");
  int hacim = hacimHespala(boy: 5, en: 3, yukseklik: 10);
  print(hacim);
}

/*int sayilariTopla(int s1, [int s2 = 0, int s3 = 0]) {
  return s1 + s2 + s3;
}*/
int sayilariTopla(s4, {int s1 = 0, int s2 = 0, int s3 = 0}) {
  return s1 + s2 + s3;
}

int hacimHespala({int en = 1, int boy = 1, int yukseklik = 1}) {
  return en * boy * yukseklik;
}
