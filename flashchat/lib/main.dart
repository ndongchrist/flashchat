import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.black54),
        ),
      ),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Fun App"),
          ),
          body: Center(
            child: Text("Default Text"),
          ),
        ),
      ),
    );
  }
}
