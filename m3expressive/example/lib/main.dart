import 'package:flutter/material.dart';
import 'package:m3expressive/m3expressive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material 3 Expressive Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple, brightness: Brightness.light),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple, brightness: Brightness.dark),
      ),
      home: DemoPage(),
    );
  }
}

class DemoPage extends StatefulWidget {
  DemoPage({super.key});

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("This is a emphasized text", style: Theme.of(context).emphasizedTextTheme.titleLarge,),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: Theme.of(context).shapeTheme.borderRadius.large,
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
          )
        ],
      ),
    );
  }
}
