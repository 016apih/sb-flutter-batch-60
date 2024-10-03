
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _dencrementCounter() {
    if(_counter > 0){
      setState(() {
        _counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: _dencrementCounter,
              child: const Icon(Icons.remove)
            ),
            const SizedBox(width: 20),
            Text("Nilai Counter : $_counter"),
            const SizedBox(width: 20),
            InkWell(
              onTap: _incrementCounter,
              child: const Icon(Icons.add)
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// ANALISIS TERHADAO SETSTATE
// 1. widget _MyHomePageState merupakan StatefulWidget hal ini ditandakan dengan adanya state "_counter" bertipe data int dengan nilai default 0
// 2. widget _MyHomePageState juga memiliki 2 fungsi yaitu 
//    _incrementCounter berfungsi untuk menambah nilai _counter dan 
//    _dencrementCounter berfungsi untuk mengurangi nilai _counter (jika nilai _counter > 0)

// APA KEGUNAAN
//  setState berfungsi untuk mengubah nilai state yg di definisikan pada sebuah widget
// fungsi setState didapatkan dari class State<nama_widget>