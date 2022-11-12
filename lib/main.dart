import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Demo(),
      theme: ThemeData(fontFamily: "circula"),
    );
  }
}

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: const [
              SizedBox(height: 30),
              Text(
                "PokeApp",
                style: TextStyle(fontFamily: "circula_bold", fontSize: 36),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
