// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:counter_7/form.dart';
import 'package:counter_7/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ignore: prefer_const_constructors
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  final String title = 'Flutter Demo Home Page';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      if (_counter > 0 ){
        _counter--;
      }
    });
  }

  String _textMaker(){
    String text = "";
    if (_counter % 2 == 0){
      text = "GENAP";
    } else{
      text = "GANJIL";
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // Menambahkan drawer menu
      drawer: Drawer(
        child: Column(
          children: [
            // Menambahkan clickable menu
            ListTile(
              title: const Text('counter_7'),
              onTap: () {
                // Route menu ke halaman utama
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
            ),
            ListTile(
              title: const Text('Tambah Budget'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyFormPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Data Budget'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyDataPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _textMaker(),
              style: TextStyle(
                color: _textMaker() == "GENAP" ? Colors.redAccent : Colors.blueAccent
              )
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, 
        children: [
          Padding(padding: const EdgeInsets.symmetric(horizontal: 30.0), child:
          FloatingActionButton(         
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
            heroTag: null,
            child: Icon(
              Icons.remove
            ),  
          )),
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            heroTag: null,
            child: Icon(
              Icons.add
            ),
          ),
          
        ]
      )
    );
  }
}
