import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.blueAccent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation Dialog Screen Fito'),
      ),
      body: Center(
          child: ElevatedButton(
        child: const Text('Change Color'),
        onPressed: () {
          _showColorDialog(context);
        },
      )),
    );
  }

  _showColorDialog(BuildContext context) async {
    await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Very important question'),
          content: const Text('Please choose a color'),
          actions: <Widget>[
            TextButton(
                child: const Text('Red'),
                onPressed: () {
                  color = Colors.red;
                  Navigator.pop(context, color);
                }),
            TextButton(
                child: const Text('Yellow'),
                onPressed: () {
                  color = Colors.yellow;
                  Navigator.pop(context, color);
                }),
            TextButton(
                child: const Text('Green'),
                onPressed: () {
                  color = Colors.green;
                  Navigator.pop(context, color);
                }),
          ],
        );
      },
    );
    setState(() {});
  }
}