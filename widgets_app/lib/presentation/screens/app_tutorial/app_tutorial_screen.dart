import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SlideInfo {
  final String title;
  final String caption;
  final String imageURL;

  SlideInfo( this.title,  this.caption,  this.imageURL);
}
final slides=<SlideInfo>[
  SlideInfo('Busca la comida','Eu esse reprehenderit qui aliqua nisi et exercitation.', 'assets/images/1.png'),
  SlideInfo('Entrega rapida','Nisi consequat cupidatat sunt nostrud sit enim magna laboris.', 'assets/images/2.png'),
  SlideInfo('Disfruta la comida','Proident nisi reprehenderit in ad sit do et do anim commodo veniam enim.', 'assets/images/3.png'),
];
class AppTutorialScreen extends StatefulWidget {
  static const name='app_tutorial_screen';
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageviewcontroller = PageController();
  bool endReach=false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageviewcontroller.addListener((){
      final page =pageviewcontroller.page ?? 0;
      if(!endReach && page >= (slides.length -1.5)){
        setState(() {
          endReach = true;
        });
      }
      //print('${pageviewcontroller.page}');
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Stack(
        children: [
          PageView(
            controller:pageviewcontroller,
            physics: BouncingScrollPhysics(),
            children: slides.map((slideData)=>_Slide(title: slideData.title, caption: slideData.caption, imageURL: slideData.imageURL)).toList(),
          ),
          Positioned(right:20,top:50,child:TextButton(onPressed: ()=>context.pop(),child:Text('salir'))),
          endReach ? Positioned(bottom:30,right: 30,child:FadeInRight(from:15,delay: Duration(milliseconds:500), child: FilledButton(onPressed: ()=>(context).pop(), child: Text('Comenzar')))):const SizedBox(),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageURL;
  const _Slide({ required this.title, required this.caption, required this.imageURL});
  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle=Theme.of(context).textTheme.bodySmall;
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: AssetImage(imageURL),),
          const SizedBox(height: 20,),
          Text(title,style: titleStyle),
          const SizedBox(height: 20),
          Text(caption,style: captionStyle,)
        ],
      ),
    );
  }
}