import 'package:flutter/material.dart';
import 'dart:math' as math show Random;
class AnimatedScreen extends StatefulWidget {
  static const name='animated_screen';
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width=50;
  double _height=50;
  Color color =Colors.indigo;
  double borderRadius=10.0;
  void  changeShape(){
    final random=math.Random();
    _width=random.nextInt(300)+120.0;
    _height=random.nextInt(300)+120.0;
    borderRadius=random.nextInt(100)+2.0;
    color=Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    );
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds:400),
          curve: Curves.elasticOut,
          width: _width <=0? 0: _width,
          height: _height <=0? 0: _height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius <=0? 0: borderRadius) 
          ),
        ),
      ),
      floatingActionButton:  FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}