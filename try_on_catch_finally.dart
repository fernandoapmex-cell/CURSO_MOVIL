void main() async{
  print('inicio del programa');

  try {
  final value = await httpGet('http://cursos.com');
  print('Exito!! $value');
  }on Exception catch(error){ 
    print('Exception capturada: El URL no tiene parametros :$error');
  }
  catch(error){
    print('tenemos un error: $error');
  }
  finally{
      print('Esto se ejecuta siempre');
  }
}
Future<String> httpGet(String url) async{
  await Future.delayed(const Duration(seconds: 3));
  throw Exception('No hay parametros en el URL');
  //return 'Respuesta de la peticion http ';
}