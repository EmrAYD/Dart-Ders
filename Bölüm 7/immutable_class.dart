void main(List<String> args) {
  const Student emre = Student(5, "Emre");
  const Student emre2 = Student(5, "Emre");
  var emre3 = const Student(5, "Emre");
  emre3 = Student(5, "Emre"); //eşit değil
  emre3 = const Student(5, "Emre"); //eşit

  if (emre == emre2) {
    print("Eşit");
  } else {
    print("Eşit değil");
  }
}

class Student {
  final int id;
  final String isim;
  const Student(this.id, this.isim);
}
