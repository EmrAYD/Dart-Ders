import 'dart:math';

void main(List<String> args) {
  try {
    double deger = kareKok(-20);
    print("DEğer: ${deger.toStringAsFixed(2)}");
  } on FormatException catch (e) {
    print(e.message);
  } catch (e) {
    print(e);
  }
}

double kareKok(int a) {
  try {
    if (a < 0) {
      throw FormatException("Sayı negatif olamaz");
    } else
      return sqrt(a);
  } on FormatException catch (e) {
    print(e.message + " metot içi");
  } finally {
    return 0;
  }
}
