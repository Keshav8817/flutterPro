import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
        int days = 30;
        String Time = "Days";
    return Scaffold(
        appBar: AppBar(
          title: Text("Port Cost"),
        ),
        body: Center(
          child: Container(
            child: Text("Welcome to Flutter $days $Time "),
          ),
        ),
        drawer: Drawer(),
      );
  }
}