import 'package:flutter/material.dart';

void main() {
  runApp(const mealApp());
}

class mealApp extends StatelessWidget {
  const mealApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
      appBar: AppBar(
        title: Text("MEAL APP"),
      ),
      
      body: Center(
        child:
       Text("Hello this is Zain ali") ,
      ),
     
    ),
    );
  }
}

