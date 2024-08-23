void main(List<String> args) {
  Veritabani db = Oracledb();

  db.userDelete();
  db.userSave();

  userGuncelle(db);
}

void userGuncelle(Veritabani a) {
  a.userUpdate();
}

abstract class Veritabani {
  void userSave();
  void userUpdate();
  void userDelete();

  void urunGuncelle();
}

class Oracledb extends Veritabani {
  @override
  void userDelete() {
    print("Oracle dbden user silindi");
  }

  @override
  void userSave() {
    print("Oracle db ye uzer kadedildi");
  }

  @override
  void userUpdate() {
    print("Oracle db de user güncellendi");
  }

  @override
  void urunGuncelle() {
    // TODO: implement urunGuncelle
  }
}

class Firebasedb extends Veritabani {
  @override
  void userDelete() {
    print("Firebase dbden user silindi");
  }

  @override
  void userSave() {
    print("Firebase dbye uzer kadedildi");
  }

  @override
  void userUpdate() {
    print("Firebase dbde user güncellendi");
  }

  @override
  void urunGuncelle() {
    // TODO: implement urunGuncelle
  }
}
