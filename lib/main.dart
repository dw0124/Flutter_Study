import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
        theme: ThemeData(
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.blue, // AppBar의 배경 색상
              foregroundColor: Colors.white, // AppBar의 글씨 및 아이콘 색상
            )
        ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BBANTO"),  // AppBar의 타이틀
        centerTitle: true,      // AppBar의 타이틀을 가운데 정렬
        backgroundColor: Colors.redAccent, // 앱바 배경색
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("hello"),
                Text("hello"),
                Text("hello"),
              ],
            ),
      ),
    );
  }
}

