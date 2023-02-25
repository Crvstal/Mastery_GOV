import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vota Pro',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vota Pro'),
      ),
      body: Center(
        child: Text('Vote Responsibly!'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Help',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Report',
          ),
        ],
        onTap: (index) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyPage(index: index)),
          );
        },
      ),
    );
  }
}

class MyPage extends StatelessWidget {
  final int index;

  const MyPage({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page ${index + 1}'),
      ),
      body: Center(
        child: Text('This is page ${index + 1}!'),
      ),
    );
  }
}
