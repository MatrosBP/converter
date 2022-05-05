import 'package:converter_2/categories.dart';
import 'package:converter_2/currency.dart';
import 'package:converter_2/energy.dart';
import 'package:converter_2/length.dart';
import 'package:converter_2/speed.dart';
import 'package:converter_2/square.dart';
import 'package:converter_2/time.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(title: "Converter",),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          children: <Widget>[
            Column(
              children: [
                Row(
                  children: [
                    Categories(title: "Скорость", color: "1", action:() => Navigator.push(context, MaterialPageRoute(builder: (context) => Speed()))),
                    Categories(title: "Длина", color: "2", action:() => Navigator.push(context, MaterialPageRoute(builder: (context) =>Length()))),
                  ],
                ),
                Row(
                  children: [
                    Categories(title: "Площадь", color: "3", action:() => Navigator.push(context, MaterialPageRoute(builder: (context) => Square()))),
                    Categories(title: "Энергия/Работа", color: "4", action:() => Navigator.push(context, MaterialPageRoute(builder: (context) => Energy()))),
                  ],
                ),
                Row(
                  children: [
                    Categories(title: "Валюта", color: "5", action:() => Navigator.push(context, MaterialPageRoute(builder: (context) => Currency()))),
                    Categories(title: "Время", color: "6", action:() => Navigator.push(context, MaterialPageRoute(builder: (context) => Time()))),
                  ],
                ),
                Row(
                  children: [

                  ],),
              ],
            )
          ],
        ),
      ),

    );
  }
}
