import 'package:flutter/material.dart';

class ExampleTablet extends StatelessWidget {
  const ExampleTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title : Text("tablet")),
      body: Center(
        child: 
        Text("tablet"),
      ),
    );
  }
}