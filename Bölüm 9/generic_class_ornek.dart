import 'my_stack.dart';

void main(List<String> args) {
  MyStack myStack = MyStack();
  myStack.push(5);
  myStack.push("emre");
  myStack.push(true);

  print(myStack.pop());
  print(myStack.pop());
  print(myStack.pop());

  IntMyStack intMyStack = IntMyStack();
  intMyStack.push(5);
  //intMyStack.push("Emre"); artık çalışmaz

  StringMyStack stringMyStack = StringMyStack();
  stringMyStack.push("Emre");

  GenericStack<String> genericStack = GenericStack();
  genericStack.push("emre");
  //genericStack.push(5);  artık çalışmaz
  print(genericStack.pop());
}
