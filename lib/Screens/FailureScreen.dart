import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FailureScreen extends StatefulWidget {
  const FailureScreen({super.key});

  @override
  State<FailureScreen> createState() => _FailureScreenState();
}

class _FailureScreenState extends State<FailureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Failure Screen"),
      ),
      body: Container(
        width: double.infinity,
          color: Colors.redAccent,
          child: const Center(child: Text("Welcome to Failure Screen",style: TextStyle(fontSize: 19,color: Colors.redAccent),),)),
    );
  }
}
