import 'package:custom_drawer/my_darwer.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget{
  Screen1({Key? key}) : super(key: key);
  createState() => _Screen1State();
}

class _Screen1State extends State<Screen1>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      drawer: MyDrawer(),
      body: const Text('Home'),
    );
  }
}