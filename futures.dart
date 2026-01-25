void main(){
  print('inicio del programa');
  httpGet('http://cursos.com').then((value){
    print(value);
  }).catchError((err){
    print('catchError: $err');
  });
  print('fin del programa');
}

Future<String> httpGet(String url){
  return Future.delayed(const Duration(seconds: 3), (){
    throw 'Error en la peticion http';
    return 'Respuesta de la peticion http ';
  });
}