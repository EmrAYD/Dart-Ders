import 'dart:ffi';

/**
 * Abstract soyut sınıf: Sınıflar arasında soyutlama yapmak için kullanılır.
 * Abstract sınıflardan nesne üretilemez , abstract sınıflarda normal ve abstract methodlar olur
 * abstract methodlar alt sınıflarca override edilmek zorundadır.
 * 
 * Bir sınıfta bir tane abstract method varsa o sınıf mutlaka abstract tanımlanmalıdır.
 * 
 * 
 */
abstract class Sekil {
  double alan();
  double cevre();
  void selamla() {
    print("Ben şekil sınıfındanım");
  }
}

class Kare extends Sekil {
  int kenar;
  Kare(this.kenar);
  @override
  double alan() {
    return kenar * kenar.toDouble();
  }

  @override
  double cevre() {
    return kenar * 4.0;
  }

  @override
  void selamla() {
    print("Ben kare sınıfındanım");
  }
}

class Dikdorkten extends Sekil {
  int kk, uk;
  Dikdorkten(this.kk, this.uk);
  @override
  double alan() {
    return kk * uk.toDouble();
  }

  @override
  double cevre() {
    return (kk + uk) * 2.0;
  }

  @override
  void selamla() {
    print("Ben dikdörtgen sınıfındanım");
  }
}

void main(List<String> args) {
  Sekil s1 = Kare(5);
  print(s1.alan());
  print(s1.cevre());
  s1.selamla();

  Sekil s2 = Dikdorkten(4, 6);
  print(s2.alan());
  print(s2.cevre());
  s2.selamla();

  List<Sekil> tumSekiller = [];
  tumSekiller.add(s1);
  tumSekiller.add(s2);

  test(s1);
  test(s2);
}

void test(Sekil s) {
  s.selamla();
}
