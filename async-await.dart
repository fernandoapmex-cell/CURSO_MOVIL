void main() async{
  print('inicio del programa');

  try {
  final value = await httpGet('http://cursos.com');
  print(value);
  }
  catch(error){
    print('tenemos un error: $error');
  }

  print('fin del programa');
}

Future<String> httpGet(String url) async{
  await Future.delayed(const Duration(seconds: 3));
  return 'Respuesta de la peticion http ';
}