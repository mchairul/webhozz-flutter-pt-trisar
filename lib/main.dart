import 'package:belajar/home.dart';
import 'package:belajar/home_route.dart';
import 'package:belajar/routes_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeRoute(),
      initialRoute: RoutesApp.pageHome,
      onGenerateRoute: RoutesApp.generateRoute,
    );
  }
}
