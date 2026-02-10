import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class  ChatProvider extends ChangeNotifier {
  // Chat provider implementation
  List<Message>messages = [
    Message(text: 'Hola, ¿Cómo estás?', fromWho: FromWho.me),
    Message(text: 'Hola, estoy bien, ¿Y tú?', fromWho: FromWho.hers),
    Message(text: 'Muy bien, gracias por preguntar', fromWho: FromWho.me),
  ];
  Future <void>sendMessage(String text) async{
    
  }
}