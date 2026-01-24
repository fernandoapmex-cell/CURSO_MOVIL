void main(){
  final windPlant = WindPlant(initialEnergy: 100);
  print(windPlant);
  print('wind:${ChargePhone(windPlant)}');
  final nuclearPlant = NuclearPlant(energyLeft: 500);
  print('nuclear:${ChargePhone(nuclearPlant)}');
}

double ChargePhone(EnergyPlant plant){
  if (plant.energyLeft < 10){
    throw Exception('Not enough energy to charge the phone');
  } 
  return plant.energyLeft -= 10;
}
enum PlantType {
  nuclear,
  wind,
  solar
}
abstract class EnergyPlant {
  double energyLeft;
  final PlantType type; //nuclear,wind, solar
  EnergyPlant({required this.energyLeft, required this.type});
  void consumeEnergy(double amount);
}

//extends o implements  
class WindPlant extends EnergyPlant{
  WindPlant({required double initialEnergy})
  : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;
  @override
  final PlantType type = PlantType.nuclear;
  NuclearPlant({required this.energyLeft});
  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount*0.5);
  }
}