void main(List<String> args) {
  var listem = <String>[];
  var myMap = <String, dynamic>{"Yaş": 19};
  var mySet = <String>{"emre", "hasan"};

  var tekSayilar = [1, 3, 5];
  var ciftSayilar = [2, 4, 6];

//spreads operator
  var sonLsite = [...tekSayilar, ...ciftSayilar];
  /* sonLsite.addAll(tekSayilar);
  sonLsite.addAll(ciftSayilar); */
  print(sonLsite);

  var map1 = {"ad": "Emre"};
  var map2 = {"yaş": 19};
  var sonMap = {...map1, ...map2};
  print(sonMap);

  var set1 = {"Hasan"};
  var set2 = {"Emre"};
  var set3 = {"Ayşe"};
  var set4 = {"Emre"};
  var sonSet = {...set1, ...set2, ...set3, ...set4};
  print(sonSet);
}
