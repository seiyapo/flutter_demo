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
  bool _flag = false;

  _click() async {
    setState(() {
      _flag = !_flag;
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
      body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
