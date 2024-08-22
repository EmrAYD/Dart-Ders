/**
 * Polimorfizm, nesneye yönelik programlamanın önemli kavramlarından biridir ve sözlük anlamı olarak "bir çok şekil" anlamına gelmektedir. 
 * Polimorfizm ile kalıtım konusu iç içedir. 
 * Kalıtım konusunu geçen bölüm incelenmişti; kalıtım konusunda iki taraf bulunmaktadır, 
 * ana sınıf ve bu sınıftan türeyen alt sınıf/sınıflar. 
 * 
 * Alt sınıf, türetildiği ana sınıfa ait tüm özellikleri alır; 
 * yani, ana sınıf ne yapıyorsa türetilen alt sınıfta bu işlemlerin aynısını yapabilir 
 * ama türetilen alt sınıfların kendilerine ait bir çok yeni özelliği de olabilir. 
 * Ayrıca türetilen alt sınıfa ait nesnenin, ana sınıf tipindeki referansa bağlamanın yukarı doğru (upcasting) işlemi denir.
 * 
 * Aşağıdaki örnekte üç  kavram mevcuttur, 
 *    bunlardan biri yukarı çevirim (upcasting) 
 *    diğeri polimorfizm 
 *    ve son olarak da geç bağlama (late binding). 
 * 
 * Şimdi yukarı çevirim ve polimorfizm kavramlarını açıklayalım. 
 * Bu örneğimizde ana sınıf Asker sınıfıdır; bu sınıfdan türeyen sınıflar ise Er ve Yuzbasi sınıflarıdır. Bu ilişki "bir" ilişkisidir ;
·       Er bir Askerdir, veya 
·       Yüzbası bir Askerdir, diyebiliriz. 

Yani Asker sınıfının yaptığı her işi Er sınıfı veya Yuzbasi sınıfı da yapabilir 
artı türetilen bu iki sınıf kendisine has özellikler taşıyabilir,
 Asker sınıfı ile Er ve Yuzbasi sınıflarının arasında kalıtımsal bir ilişki bulunmasından dolayı, 
 Asker tipinde parametre kabul eden hazirOl()yordamına Er ve Yuzbasi tipindeki referansları paslayabildik, 
 bu özelliğinde yukarı çevirim (upcasting) olduğunu söyleyebilir. 

Polimorfizm ise hazirOl()yordamının içerisinde gizlidir. 
Bu yordamın (method) içerisinde Asker tipinde olan a referansı kendisine gelen 2 değişik nesneye (Er ve Yuzbasi) bağlanabildi; 
bunlardan biri Er diğeri ise Yuzbasi’dır. Peki bu yordamın içerisinde neler olmaktadır? 

Sırası ile açıklarsak; ilk önce Asker nesnesine bağlı Asker tipindeki referansı, 
hazirOl()yordamına parametre olarak gönderiyoruz, burada herhangi bir terslik yoktur çünkü 
hazirOl()yordamı zaten Asker tipinde parametre kabul etmektedir.
Burada dikkat edilmesi gereken husus, hazirOl() yordamının içerisinde Asker tipindeki yerel a değişkenimizin, 
kendi tipinden başka nesnelere de (Er ve Yuzbasi) bağlanabilmesidir; 
yani, Asker tipindeki yerel a değişkeni bir çok şekle girmiş bulunmaktadır. Aşağıdaki ifadelerin hepsi doğrudur:
·       Asker a = new Asker() ;
·       Asker a = new Er();
·       Asker a = new Yuzbasi();
Yukarıdaki ifadelere, Asker tipindeki adeğişkenin açısından bakarsak, 
bu değişkenin bir çok nesneye bağlanabildiğini görürüz, 
bu özellik polimorfizm 'dir -ki bu özelliğin temelinde kalıtım (inheritance) yatar.
 */

void main(List<String> args) {
  User user1 = User();
  var user2 = NormalUser();
  PremiumUser user3 = PremiumUser();
  AdminUser user4 = AdminUser();

  User user5 = AdminUser(); //Upcasting (yukarı çevrim)

  List<User> tumUserler = [];
  tumUserler.add(user1);
  tumUserler.add(user2);
  tumUserler.add(user3);
  tumUserler.add(user4);
  tumUserler.add(user5);

  test(user1);
  test(user2);
  test(user3);
  test(user4);
  test(user5);
}

void test(User k) {
  k.giris(); //porlimorfizm (Çok biçimlilik)
}

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
  @override
  void giris() {
    print("Admin user giriş yaptı");
  }

  void toplamkullanici() {
    print("Toplam kullanıcı sayısı 20");
  }
}
