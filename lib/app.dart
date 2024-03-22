import 'package:deskweb/home_screen.dart';
import 'package:flutter/material.dart';

class DeskWeb extends StatelessWidget {
  const DeskWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeskWeb',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('DeskWeb')),
        body: const HomeScreen(),
      ),
    );
  }
}