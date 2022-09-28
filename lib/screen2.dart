import 'package:custom_drawer/my_darwer.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget{
  Screen2({Key? key}) : super(key: key);
  createState() => _Screen2State();
}

class _Screen2State extends State<Screen2>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Other Screen')),
      drawer: MyDrawer(),
      body: const Text('Other Screen'),
    );
  }
}