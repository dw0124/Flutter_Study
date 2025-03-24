import 'package:flutter/material.dart';

class StartAppBar extends StatelessWidget {
  const StartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: AppBarPage(),
    );
  }
}

class AppBarPage extends StatelessWidget {
  const AppBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),   // 앱바 타이틀
        centerTitle: true,    // 타이틀 중앙 위치
        elevation: 0.0,
        leading: IconButton(  // 앱바 좌측 버튼
          icon: Icon(Icons.menu),
          onPressed: () {     // 동작 블럭
            print('menu button is clicked');
          }
        ),
        actions: [    // 앱바 우측 요소
          IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                print('Shopping Cart button is clicked');
              }
          ),
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('Search button is clicked');
              }
          ),
        ],
      ),
    );
  }
}
