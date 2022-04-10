import 'package:flutter/material.dart';

import 'widgets/custom_expansion_tile.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        ExpansionTile(
          leading: Icon(Icons.access_alarm),
          title: Text('Default'),
          subtitle: Text('subtitle'),
          trailing: Icon(Icons.info),
          children: [
            ListTile(title: Text('This is the first item')),
            ListTile(title: Text('This is the second item')),
          ],
        ),
        CustomExpansionTile(
          leading: Icon(Icons.access_alarm),
          title: Text('Default'),
          subtitle: Text('subtitle'),
          trailing: Icon(Icons.info),
          children: [
            ListTile(title: Text('This is the first item')),
            ListTile(title: Text('This is the second item')),
          ],
        ),
      ],
    ));
  }
}
