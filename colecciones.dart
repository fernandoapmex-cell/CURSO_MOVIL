void main() {
  final numbers = [
    1,
    2,
    3,
    4,
    4,
    4,
    6,
    6,
    6,
    7,
    7,
    7,
    7,
    5,
    8,
    4,
    9,
    8,
    8,
    9,
    10,
  ];
  print(' List original $numbers');
  print(' length: ${numbers.length}');
  print('index 0: ${numbers[0]}');
  print('index 0: ${numbers.first}');
  print('index last: ${numbers.last}');
  print('reversed: ${numbers.reversed}');
  final reversedNumbers = numbers.reversed;
  print('Iterable:${reversedNumbers.toList()}');
  print('Iterable:${reversedNumbers.toSet()}');
  final numbersGreatherThan5 = numbers.where((num) {
    return num > 5; //esto regresa un true o false si no es mayor a 5
  });
  print('numeros mayores a 5:${numbersGreatherThan5.toSet()}');
}