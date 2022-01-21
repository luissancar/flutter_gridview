// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicación',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Aplicación"),
        ),
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 130,
              child: Text(
                "Texto",
                style: TextStyle(fontSize: 80.0),
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 4,
                children: [
                  boton("1"),
                  boton("2"),
                  boton("3"),
                  boton("4"),
                  boton("5"),
                  boton("6"),
                  boton("7"),
                  boton("8"),
                  boton("9"),
                  boton("A"),
                  boton("B"),
                  boton("C"),
                ],
              ),
            ),
          ],
        ));
  }
}

Widget boton(String texto) {
  return ElevatedButton(onPressed: () {}, child: Text(texto));
}
