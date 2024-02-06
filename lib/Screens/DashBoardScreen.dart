import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DashBoardScreen"),
      ),
      body: Container(
          width: double.infinity,
          color: Colors.greenAccent,
          child: const Center(child: Text("Welcome to DashBoard Screen",style: TextStyle(fontSize: 19,color: Colors.redAccent),),)),
    );
  }
}
