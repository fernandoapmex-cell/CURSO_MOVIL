void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Technology',
    'isAlive': false,
  };
  final Hero ironmanJson = Hero.fromJson(rawJson);
  print(ironmanJson);
  final Hero ironman = Hero(
    name: 'Tony Stark',
    power: 'Technology',
    isAlive: false,
  );

  print(ironman);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name',
      power = json['power'] ?? 'No power',
      isAlive = json['isAlive'] ?? false;

  @override
  String toString() {
    return 'Hero (name: $name, power: $power, isAlive: ${isAlive ? "Yes" : "Nope"})';
  }
}
