void main(List<String> args) {
  Kisi emre = Kisi("Emre", 19);

  Calisan hasan = Calisan("Hasan", 30, 900);
  hasan.kendiniTanit();
}

class Kisi {
  String isim;
  int yas;

  Kisi(this.isim, this.yas);
  void kendiniTanit() {
    print("Benim adım $isim yaşım $yas");
  }
}

class Calisan extends Kisi {
  int maas;
  Calisan(super.isim, super.yas, this.maas);
  @override
  void kendiniTanit() {
    super.kendiniTanit();
    print("Maaşım da $maas");
  }
}
