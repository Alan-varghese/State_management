import 'package:counter/screen/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/counter_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterScreen(),
    );
  }
}
