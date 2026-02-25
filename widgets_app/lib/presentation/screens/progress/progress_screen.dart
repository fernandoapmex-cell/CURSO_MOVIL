import 'package:flutter/material.dart';
class ProgressScreen extends StatelessWidget {
  static const name='progress-screen';
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress indicators'),
      ),
      body: _ProgressView()
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          SizedBox(height: 30),
          Text('Circular progress indicator'),
          SizedBox(height: 10),
          CircularProgressIndicator(
            strokeWidth: 2,
            backgroundColor: Colors.black26,
          ),
          SizedBox(height: 20),
          Text('Circular y Linear progress indicator controlado'),
          SizedBox(height: 10),
          _ControllerProgressIndicator(),

        ],
      ),
    );
  }
}

class _ControllerProgressIndicator extends StatelessWidget {
  const _ControllerProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 300), (value) => (value * 2) / 100).takeWhile((value) => value < 100),
      builder: (context, asyncSnapshot) {
        final progressValue = asyncSnapshot.data ?? 0;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(value: progressValue,backgroundColor: Colors.black12,),
              SizedBox(width: 20),
              Expanded(child: LinearProgressIndicator(value: progressValue,))
            ],
          ),
        );
      }
    );
  }
}