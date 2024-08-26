void main(List<String> args) {
  double doubleOrtalama = ortalamaBul<double>(5, 5.4);
  double intOrtalama = ortalamaBul<int>(7, 5);
  print("Ortalama: $doubleOrtalama");
  print("Ortalama: $intOrtalama");
}

double ortalamaBul<T extends num>(T s1, T s2) {
  return (s1 + s2) / 2;
}
