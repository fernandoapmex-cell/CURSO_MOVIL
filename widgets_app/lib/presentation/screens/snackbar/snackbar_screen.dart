import 'package:flutter/material.dart';
class SnackbarScreen extends StatelessWidget {
  static const name='snackbar_screen';
  const SnackbarScreen({super.key});
  void showCustomSnackbar(BuildContext context){
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar=SnackBar(
      content: const Text('Hola Mundo'),
      duration: const Duration(seconds: 2),
      action: SnackBarAction(label: 'Ok!', onPressed: (){}),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }
  void openDialog(BuildContext context){
    showDialog(context: context, builder: (context)=>AlertDialog(
      title: const Text('¿Estas seguro?'),
      content: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a diam lectus. Sed sit amet ipsum mauris. Maecenas congue ligula ac quam viverra nec consectetur ante hendrerit. Donec et mollis dolor. Praesent et diam eget libero egestas mattis sit amet vitae augue. Nam tincidunt congue enim, ut porta lorem lacinia consectetur. Donec ut libero sed arcu vehicula ultricies a non tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut gravida lorem. Ut turpis felis, pulvinar a semper sed, adipiscing id dolor.'),
      actions: [
        TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Cancelar')),
        FilledButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Aceptar')),
      ],
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(onPressed: (){
              showAboutDialog(context: context,children: [
                const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a diam lectus. Sed sit amet ipsum mauris. Maecenas congue ligula ac quam viverra nec consectetur ante hendrerit. Donec et mollis dolor. Praesent et diam eget libero egestas mattis sit amet vitae augue. Nam tincidunt congue enim, ut porta lorem lacinia consectetur. Donec ut libero sed arcu vehicula ultricies a non tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut gravida lorem. Ut turpis felis, pulvinar a semper sed, adipiscing id dolor.')
              ]);
            }, child: const Text('Licencias Usadas')),
            const SizedBox(height: 10),
            FilledButton.tonal(onPressed: (){openDialog(context);}, child: const Text('Mostrar Dialogo')),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Mostrar Snackbar'),
        icon:Icon(Icons.remove_red_eye_outlined),
        onPressed: () {
          showCustomSnackbar(context);
        },  
      ),
    );
  }
}