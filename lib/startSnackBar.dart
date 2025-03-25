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
      body: Builder(builder: (BuildContext ctx) {
        return Center(
          child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
                content: Text('Hello'),
              ));
            },
            style: style,
            child: Text('Show me'),
          ),
        );
      })
    );
  }
}
