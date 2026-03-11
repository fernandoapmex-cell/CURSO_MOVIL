import 'package:cinemapedia/presentation/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
class HomeScreen extends ConsumerStatefulWidget {
  static const name ='home_screen';
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();
    ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
  }
  @override
  Widget build(BuildContext context) {
    final nowPlayingMovies=ref.watch(nowPlayingMoviesProvider);
    return ListView.builder(
      itemCount: nowPlayingMovies.length,
      itemBuilder: (context,index){
        final movie=nowPlayingMovies[index];
        return ListTile(
          title: Text(movie.title),
        );
      },
    );
  }
}