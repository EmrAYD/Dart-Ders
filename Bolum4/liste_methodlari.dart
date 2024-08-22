void main(List<String> args) {
  List<int> sayilar = [10, 8, 4, 11, 2];
  if (sayilar.isNotEmpty) {
    print(sayilar.first);
    print(sayilar.last);
  } else {
    print("Boş mu: ${sayilar.isEmpty}");
  }
  print("Eleman sayısı: ${sayilar.length}");
  print("Ters sırada: ${sayilar.reversed}");

  sayilar.add(23);
  print(sayilar);

  sayilar.remove(4); //verilen elemanı siler
  print(sayilar);

  sayilar.removeAt(1); //verilen indexi siler
  print(sayilar);

  if (sayilar.contains(8)) {
    print("Listede 8 var");
  } else {
    print("Listede 8 yok");
  }

  print(sayilar.elementAt(2));

  print(sayilar.indexOf(11));

  sayilar.shuffle();
  print(sayilar);

  sayilar.clear();
  print(sayilar);
}
