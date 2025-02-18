import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rating App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Rating App'),
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
      body: Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Icon(
      Icons.star,
      size: 50,
      color: Color.fromARGB(255, 255, 0, 0), 
    ),
    Icon(
      Icons.star,
      size: 50,
      color: Color.fromARGB(255, 255, 165, 0),
    ),
    Icon(
      Icons.star,
      size: 50,
      color: Color.fromARGB(255, 0, 217, 25),
    ),
    Icon(
      Icons.star,
      size: 50,
      color: Color.fromARGB(255, 0, 0, 255),
    ),
    Icon(
      Icons.star,
      size: 60,
      color: Color.fromARGB(255, 255, 255, 0), 
    ),
  ],
)
,
    );
  }
}
