void main() {
  //final windPlant = EnergyPlant();
}

enum PlantType { nuclear, wind, solar }

abstract class EnergyPlant {
  double energyLeft;
  PlantType type; //nuclear,wind, solar
  EnergyPlant({required this.energyLeft, required this.type});
  void consumeEnergy(double amount);
}
