import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
        title: Text(widget.title),
      ),
      body: Column(children: [
        _buildToggeleBar(context),
        _buildProductTile(context, 'Product 1'),
      ]),
    );
  }
}

Widget _buildProductTile(BuildContext context, String text) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Expanded(
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add),
        ),
      ],
    ),
  );
}

Widget _buildToggeleBar(BuildContext context) {
  return Row(
    children: [
      _buildToggleItem(context, 'Item 1', isSelected: true),
      _buildToggleItem(context, 'Item 2'),
      _buildToggleItem(context, 'Item 3'),
    ],
  );
}

Widget _buildToggleItem(BuildContext context, String text,
    {bool isSelected = false}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      text,
      style: TextStyle(
        fontSize: 20.0,
        color: isSelected ? null : Theme.of(context).textTheme.bodyLarge?.color,
        fontWeight: isSelected ? FontWeight.bold : null,
      ),
    ),
  );
}
