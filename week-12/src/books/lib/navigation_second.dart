import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    Color color;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Second Screen Fito"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Spacer(),
            ElevatedButton(
                onPressed: () {
                  color = Colors.red;
                  Navigator.pop(context, color);
                },
                child: const Text("red")),
            ElevatedButton(
                onPressed: () {
                  color = Colors.yellow;
                  Navigator.pop(context, color);
                },
                child: const Text("yellow")),
            ElevatedButton(
                onPressed: () {
                  color = Colors.green;
                  Navigator.pop(context, color);
                },
                child: const Text("green")),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}