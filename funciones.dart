void main() {
  print(greetEveryone());
  print(funcionDeFlechaOLambda());
  print('suma de 2 valores :${addTwoNumbers(10, 20)}');
  print('suma de 2 valores :${addTwoNumbersLambda(10, 20)}');
  print(greetPerson(name:'Fernando'));
}

String greetEveryone() {
  return 'Hello Everyone';
}

String funcionDeFlechaOLambda() => 'Adios a todos';

int addTwoNumbers(int a, int b) {
  return a + b;
}

int addTwoNumbersLambda(int a, int b) => a + b;

int addTwoNumbersOptional(int a, [int b = 0]) {
  return a + b;
}

String greetPerson({ required String name, String message='Hola'}) {
  return '$message,$name';
}
