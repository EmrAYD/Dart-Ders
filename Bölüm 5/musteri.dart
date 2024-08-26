class Musteri {
  int? _musteriNo;

  // Musteri(int musteriNo) {
  //   this.musteriNo = musteriNo;

  //Musteri(this._musteriNo);

  Musteri(int no) {
    _musteriNok(no);
  }

  String get musteriNoSoyle {
    return "Muşteri no:$_musteriNo.";
  }

  String get musteriNoSoyle2 => "Muşteri no:$_musteriNo.";

  void set musteriNoAta(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else
      return;
  }

  void _musteriNok(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else
      return;
  }

  void bilgileriYazdir() {
    print("Muşteri oluşuturldu, müşteri no:$_musteriNo");
  }
}
