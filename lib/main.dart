//import 'package:repaircms/homepage.dart';
import 'package:flutter/material.dart';
import 'package:repaircms/pages/page_03.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Repair CMS',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(183, 228, 228, 228)),
      ),
      home: const Page03(),
      //home: const MyHomePage(title:'Repair CMS'),
    );
  }
}