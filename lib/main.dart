import 'package:flutter/material.dart';
import 'package:lorem/nav.dart';
import 'package:lorem/widgets/medicine_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: MedicineName()
      home: NavigationBarPage(),
     // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

