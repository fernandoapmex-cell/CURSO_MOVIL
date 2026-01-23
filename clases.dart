void main(){
  //final Hero wolverine = Hero('Logan', 'Regeneration');
  final Hero wolverine = Hero(name: 'Logan', power: 'Regeneration');
  print(wolverine);
  print('Hero: ${wolverine.name}, Power: ${wolverine.power}');
}

class Hero{
  String name;
  String power;
  //funcionan de la misma forma
  Hero ({required this.name,  this.power = 'No tiene poder'});
  //Hero (String pName,String pPower)
  //: this.name = pName,
  //  this.power = pPower;
  @override
  String toString(){
    return 'Hero mensaje personalizado (name: $name, power: $power)';
  } 
}