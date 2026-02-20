import 'package:flutter/material.dart';
import 'package:toktik/presentation/widgets/video/video_background.dart';
import 'package:video_player/video_player.dart';

class FullscreenPlayer extends StatefulWidget {
  final String videoUrl;
  final String caption;
  const FullscreenPlayer({super.key, required this.videoUrl, required this.caption});
  @override
  State<FullscreenPlayer> createState() => _FullscreenPlayerState();
}

class _FullscreenPlayerState extends State<FullscreenPlayer> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller=VideoPlayerController.asset(widget.videoUrl)..setVolume( 0)..setLooping(true)..play();
  }
  @override
  void dispose() {
    //aca se limpia el controlador para evitar que se quede reproduciendo el video aunque ya no se vea en pantalla
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }
   @override
   Widget build(BuildContext context) {
    return FutureBuilder(future: _controller.initialize(), builder: (context, snapshot){
      if(snapshot.connectionState != ConnectionState.done) {
      return const Center(child: CircularProgressIndicator(strokeWidth: 2,color: Colors.red,));
      }
      return GestureDetector(
        onTap: (){
          if(_controller.value.isPlaying){
            _controller.pause();
          }else{
            _controller.play();
          }
        },
        child: AspectRatio(aspectRatio:_controller.value.aspectRatio, child: Stack(
          children: [
            VideoPlayer(_controller),
            //gradiente
            VideoBackground(stops: [0.80,1.0],),
            //texto del video
            Positioned(bottom:20,left: 20, child: VideoCaption(caption: widget.caption)),
          ],
        ),
        ),
      );
    },
    );
   }
}

class VideoCaption extends StatelessWidget {
  final String caption;
  const VideoCaption({super.key, required this.caption});
  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.sizeOf(context);
    final titleStyle= Theme.of(context).textTheme.titleLarge;
    return SizedBox(
      width: size.width*0.6,
      child: Text(caption, maxLines: 2,style:titleStyle),
    );
  }
}