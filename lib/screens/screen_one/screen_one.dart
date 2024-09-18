import 'package:flutter/material.dart';
import 'package:ui_task_2/screens/screen_one/widgets/screen_one_body.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Decorative flowers',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        backgroundColor: Colors.green[900],
        leading: const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white54,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: Icon(
              Icons.menu,
              color: Colors.white54,
            ),
          ),
        ],
      ),
      body: const ScreenOneBody(),
    );
  }
}
