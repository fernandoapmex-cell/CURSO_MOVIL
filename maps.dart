void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': {1: 'ditto/front.png', 2: 'ditto/back.png'},
  };
  print(pokemon);
  print('Name: ${pokemon['name']}');
  print('sprites: ${pokemon['sprites']}');
  print('sprite numero 1: ${pokemon['sprites'][1]}');
  print('sprite numero 2: ${pokemon['sprites'][2]}');
}
