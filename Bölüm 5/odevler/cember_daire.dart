class CemberDaire {
  int _yaricap = 1;
  double _pi = 3.14;
  CemberDaire(int b) {
    _yaricapK = b;
  }
  void set _yaricapK(int a) {
    if (a > 0) {
      _yaricap = a;
    } else {
      _yaricap = 1;
    }
  }

  double cevre() {
    return 2 * _pi * _yaricap;
  }

  double alan() {
    return _pi * _yaricap * _yaricap;
  }
}
