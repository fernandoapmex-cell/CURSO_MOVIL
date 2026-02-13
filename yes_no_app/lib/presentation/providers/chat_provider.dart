import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class  ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollControler = ScrollController();
  // Chat provider implementation
  List<Message>messages = [
    Message(text: 'Hola, ¿Cómo estás?', fromWho: FromWho.me),
    Message(text: 'Hola, estoy bien, ¿Y tú?', fromWho: FromWho.hers),
    Message(text: 'Muy bien, gracias por preguntar', fromWho: FromWho.me),
  ];
  Future <void>sendMessage(String text) async{
    if(text.isEmpty)return;
    final newMessage =Message(text: text, fromWho: FromWho.me);
    messages.add(newMessage);
    notifyListeners();
    moveScrollToBottom();
  }
  Future<void> moveScrollToBottom() async{
    await Future.delayed(Duration(milliseconds: 100));
    chatScrollControler.animateTo(chatScrollControler.position.maxScrollExtent, duration: Duration(milliseconds: 300), curve: Curves.easeOut);
  }
}