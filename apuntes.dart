void main() {
  
//   var myName = 'Fernando';
//   late final myName;
//   String myName = 'Fernando';
  const myName = 'Fernando';
    
  
  print('Hola $myName');
  print('Hola ${ myName.toUpperCase() }');
  print('Hola ${ 1 + 1 }');
}

void main() {
  
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  final sprites = <String>['ditto/front.png','ditto/back.png'];
  
// dynamic == null
  dynamic errorMessage = 'Hola';
  errorMessage = true;
  errorMessage = [1,2,3,4,5,6];
  errorMessage = { 1,2,3,4,5,6 };
  errorMessage = () => true;
  errorMessage = null;

  errorMessage +=1; //esto deberia ser un error pero no lo marca por que es un tipo dynamic

    
  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
  """);
  
  
}

