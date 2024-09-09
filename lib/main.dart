import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  TextEditingController controle = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculadora'),
          backgroundColor: Colors.greenAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [TextField(),Row(
              mainAxisAlignment:  MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){}, child: Text('1')),
                ElevatedButton(onPressed: (){}, child: Text('2')),
                ElevatedButton(onPressed: (){}, child: Text('3')),
                ElevatedButton(onPressed: (){}, child: Text('X')),
              ],
            ),Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){}, child: Text('4')),
                ElevatedButton(onPressed: (){}, child: Text('5')),
                ElevatedButton(onPressed: (){}, child: Text('6')),
                ElevatedButton(onPressed: (){}, child: Text('-')),
              ],
            ),Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){}, child: Text('7')),
                ElevatedButton(onPressed: (){}, child: Text('8')),
                ElevatedButton(onPressed: (){}, child: Text('9')),
                ElevatedButton(onPressed: (){}, child: Text('+')),
              ],
            ),Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){}, child: Text('0')),
                ElevatedButton(onPressed: (){}, child: Text('=')),
                ElevatedButton(onPressed: (){}, child: Text('%')),
              ],
            )
              ],

          ),
        ),
      ),
    );
  }
}
