import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'おああああああああああ'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool _flag = false;

  _click() async {
    setState(() {
      _flag = !_flag;
    });
  }


  void _incrementCounter() {
    setState(() {
     
      _counter++;
      
    });
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        
        title: Row(children: const[
          Icon(Icons.create),
          Text("ガハハハ")
        ]),
      ),
      body: Column(children: [
        Text(
          '$_counter',
          style: Theme.of(context).textTheme.headline4,
        ),
        if (_counter % 2 == 0)
        Text(
          '偶数です',
          style: TextStyle(fontSize: 20, color: Colors.red)
        ),
        const Center(
          child: Icon(FontAwesomeIcons.gift, color:Colors.teal)
        ),
        TextButton(
          onPressed: () => {print("ボタンが押されたよ")},
          child: const Text("テキストボタン"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(
              Icons.favorite,
              color: Colors.pink,
              size: 24.0,
            ),
            Icon(
              Icons.audiotrack,
              color: Colors.green,
              size: 24.0,
            ),
            Icon(
              Icons.beach_access,
              color: Colors.blue,
              size: 24.0,
            ),
          ],
        ),
            AnimatedOpacity(
                opacity: _flag ? 0.1 : 1.0,
                duration: const Duration(seconds: 3),
                child: Text(
                  "消える文字",
                  style: Theme.of(context).textTheme.headline4,
                )),
            AnimatedSize(
                duration: const Duration(seconds: 3),
                child: SizedBox(
                    width: _flag ? 50 : 200,
                    height: _flag ? 50 : 200,
                    child: Container(color: Colors.purple))),
            AnimatedAlign(
                duration: const Duration(seconds: 3),
                alignment: _flag ? Alignment.topLeft : Alignment.bottomRight,
                child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Container(color: Colors.green)))
      ]),
        floatingActionButton: FloatingActionButton(
        onPressed: _click, child: const Icon(Icons.add),
        tooltip: 'Increment',
        ),
      drawer: const Drawer(child: Center(child: Text("Drawer"))),
      endDrawer: const Drawer(child: Center(child: Text("EndDrawer"))),
    );
     
  }
}
