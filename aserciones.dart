void main() {
  final mySquare = Square(side: -10);
  //tambien se pueden pasar los parametros del metodo de esta forma|
  print('area ${mySquare.area}');
}

class Square {
  double _side; //side * side
  //aplicamos el contructor
  Square({required double side})
    : assert(side > 0, 'El lado debe ser mayor que cero'),
      _side = side;
  //getter
  double get area {
    return _side * _side;
  }

  //setter
  set side(double value) {
    print('Modificando el lado del cuadrado :$value');
    if (value <= 0) throw 'Valor tiene que ser mayor a 0';
    _side = value;
  }

  //calculamos el area
  double calculateArea() {
    return _side * _side;
  }
}