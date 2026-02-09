import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier{
  bool initialloagding=true;
  List<VideoPost>videos = [];
  Future<void>loadNextPage()async{
    // cargar videos
    notifyListeners();
  }
}