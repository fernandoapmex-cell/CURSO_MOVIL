import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textcontroller = TextEditingController();
    final FocusNode focusNode = FocusNode();
    final colors = Theme.of(context).colorScheme;
    final OutlineInputBorder = UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40),
    );
    final inputDecoration = InputDecoration(
      hintText: 'Termina tu mensaje con un "??"',
      enabledBorder: OutlineInputBorder,
      focusedBorder: OutlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send_outlined),
        onPressed: () {
          final textValue = textcontroller.value.text;
          print('Valor de la caja de texto : $textValue');
          textcontroller.clear();
        },
      ),
    );
    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textcontroller,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('Submit value: $value');
        textcontroller.clear();
        focusNode.requestFocus();
      },
      onChanged: (value) {
        print('Change value: $value');
      },
    );
  }
}
