import 'dart:math';

class VeriTabaniIslemleri {
  String _kullaniciAdi = "Emre";
  String _sifre = "123456";

  VeriTabaniIslemleri() {}
  VeriTabaniIslemleri.loginwithNP(String k, String s);

  bool baglan() {
    if (_intVarmi()) {
      if (_kullaniciAdi == "Emre" && _sifre == "123456") {
        return true;
      } else
        return false;
    } else
      return false;
  }

  bool _intVarmi() {
    if (Random().nextBool()) {
      return true;
    } else
      return false;
  }
}
