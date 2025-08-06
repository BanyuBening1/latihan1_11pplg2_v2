import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2_v2/login_page.dart';
import 'package:latihan1_11pplg2_v2/pages/calculator_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: CalculatorPage(),
    );
  }
}
