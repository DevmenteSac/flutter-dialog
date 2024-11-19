import 'package:flutter/material.dart';
import 'package:flutter_dialog/dialogs/showBasicDialog.dart';
import 'package:flutter_dialog/dialogs/showInputDialog.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo ShowDialog'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton.extended(
              label: const Text("Show Dialog Basic"),
              onPressed: () {
                showBasicDialog(context);
              },
            ),
            FloatingActionButton.extended(
              onPressed: () {
                showInputDialog(context);
              },
              label: const Text("Show Dialog Input"),
            ),
          ],
        ),
      ),
    );
  }
}