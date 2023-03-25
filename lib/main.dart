import 'package:flutter/material.dart';
import 'package:my_app/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: Routes.home,
      routes: Routes.mapping,
    );
  }
}
