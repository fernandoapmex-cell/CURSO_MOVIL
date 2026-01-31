import 'package:flutter/material.dart';

class Counter_funtions_Screen extends StatefulWidget {
  const Counter_funtions_Screen({super.key});

  @override
  State<Counter_funtions_Screen> createState() =>
      _Counter_funtions_ScreenState();
}

class _Counter_funtions_ScreenState extends State<Counter_funtions_Screen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
        ],
        title: const Text('Counter Functions'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              '${clickCounter == 1 ? 'Click' : 'Clicks'}',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w100),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Coustom_Button(
            icon: Icons.refresh_outlined,
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
          const SizedBox(height: 10),
          Coustom_Button(
            icon: Icons.plus_one_outlined,
            onPressed: () {
              setState(() {
                clickCounter++;
              });
            },
          ),
          const SizedBox(height: 10),
          Coustom_Button(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () {
              setState(() {
                clickCounter--;
              });
            },
          ),
        ],
      ),
    );
  }
}

class Coustom_Button extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  const Coustom_Button({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: StadiumBorder(),
      onPressed: this.onPressed,
      child: Icon(icon),
    );
  }
}
