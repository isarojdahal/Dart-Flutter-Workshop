import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  String data;
  SettingsScreen({required this.data});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings Screen"),
      ),
      body: Container(child: Text(data)),
    );
  }
}
