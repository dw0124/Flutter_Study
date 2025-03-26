import 'package:flutter/material.dart';

class StartSnackBar extends StatelessWidget {
  const StartSnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'SnackBar',
        home: StartSnackBarPage()
    );
  }
}

class StartSnackBarPage extends StatelessWidget {
  const StartSnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: MySnackBar()
    );
  }
}

class MySnackBar extends StatelessWidget {
  const MySnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('Button'),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Hello',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white
              ),
            ),
            backgroundColor: Colors.teal,
            duration: Duration(milliseconds: 1000),
          )
          );
        },
      ),
    );
  }
}