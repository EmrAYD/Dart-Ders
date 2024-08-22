/**
 * KALITIM INHERITANCE : İki adet sınıf düşünelim. Birinin adı Ebeveyn diğerinin adı Çocuk olsun. 
 * Ebeveyn sınıfının özelliklerini anne+baba’nın işlevleri oluşturmaktadır. 
 * Çocuk ise bazı özellikler bakımından anne babaya benzerlik göstermektedir. (saç rengi, göz rengi) 
 * Bunların yanından çocukta anne ve babasında olmayan bazı özelliklerde yer alabilir.  ( Anne baba kısa boylu iken çocuğun uzun olması). 
 * Ebeveyn gibi üst sınıflara süper sınıflar denir.  Bunlardan türetilen alt sınıflara alt sınıflar denir. 

Dart da kalıtım bir sınıfın kendine ait özellikleri başka bir sınıfa aynen aktarması ya da bazı özellikleri diğer sınıflara izin vermesidir.

Extends deyimi: bir sınıfa ait özelliklere başka bir sınava miras almak için kullanılır.

Her alt sınıf doğrudan bir tane süper sınıfa sahip olabilir. 
Her alt sınıf süper sınıfın özelliklerini taşır.  
Süper sınıftan alınan bazı özellikler değiştirilebilir. Aynen kullanılmak zorunda değildir. 
Kalıtımın basamakları çok uzun olmamalıdır.  Bu kötü tasarıma neden olur.

Kalıtımın Faydaları
Daha önceden yazılmış kod parçacıkları tekrar tekrar yazılmadan başka sınıflarda kullanılabilir.  
if, else, switch gibi kontrol ifadelerinin oolduğu sınıflar kötü tasarım örnekleridir. Bunun yerine kalıtım tercih edilmelidir.

Method overriding : üst sınıftaki değişken veya methodların alt sınıf tarafından değiştirilmesidir.
 */

class User {
  String email = "", password = "";

  void giris() {
    print("Genel user giriş yaptı");
  }
}

class NormalUser extends User {
  void davetEt() {
    print("Normal user davet etti");
  }

  @override
  void giris() {
    print("Normal user giriş yaptı");
  }
}

class PremiumUser extends NormalUser {
  void vipqardes() {
    print("Premium userim ben");
  }

  @override
  void giris() {
    print("Premium user giriş yaptı");
  }
}

class AdminUser extends User {
  void toplamkullanici() {
    print("Toplam kullanıcı sayısı 20");
  }
}

void main(List<String> args) {
  User user1 = User();
  NormalUser normal1 = NormalUser();
  normal1.davetEt();
  normal1.password;
  PremiumUser pre1 = PremiumUser();
  pre1.giris();
  pre1.davetEt();
  pre1.vipqardes();
}
