import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int selectedItem = 0;

  List<Widget> list = [const PageOne(),const PageTwo(),const PageThree()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.music_note), label: "Music"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),

        ],
        onTap: (index) {
          setState(() {
            selectedItem = index;
          });
        },
        currentIndex: selectedItem,
      ),
      body: list[selectedItem],
    );
  }
}

class PageOne extends StatefulWidget{
  const PageOne({super.key});

  @override
  State<StatefulWidget> createState() {
    return PageOneState();
  }
}

class PageOneState extends State<PageOne>{
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Home"),
    );
  }
}
class PageTwo extends StatefulWidget{
  const PageTwo({super.key});

  @override
  State<StatefulWidget> createState() {
    return PageTwoState();
  }
}

class PageTwoState extends State<PageTwo>{
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Music"),
    );
  }
}
class PageThree extends StatefulWidget{
  const PageThree({super.key});

  @override
  State<StatefulWidget> createState() {
    return PageThreeState();
  }
}

class PageThreeState extends State<PageThree>{
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Settings"),
    );
  }
}
