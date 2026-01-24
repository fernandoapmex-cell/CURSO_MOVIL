void main() {
  final mySquare = Square(side: 5);
  //tambien se pueden pasar los parametros del metodo de esta forma
  mySquare.side = 10;
  print('El área del cuadrado es: ${mySquare.calculateArea()}');
  print('area ${mySquare.area}')
}

class Square{
  double _side;//side * side
  //aplicamos el contructor
  Square({required double side})
      : _side = side;
  //getter
  double get area{
    return _side * _side;
  }

  //setter
  set side(double value){
    print('Modificando el lado del cuadrado :$value');
    if(value <= 0) throw 'Valor tiene que ser mayor a 0';
    _side = value;
  }
  //calculamos el area
  double calculateArea(){
    return _side * _side;
  }
}