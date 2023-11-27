// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_mao_massa/navegacacao/home_page.dart' as navegacao;
import 'package:flutter_mao_massa/navegacacao/page1.dart';
import 'package:flutter_mao_massa/navegacacao/page2.dart';
import 'package:flutter_mao_massa/navegacacao/page3.dart';
import 'package:flutter_mao_massa/navegacacao/page4.dart';

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
      // home: navegacao.HomePage(),
      routes: {
        '/': (_) => navegacao.HomePage(),
        '/page1': (_) => Page1(),
        Page2.routeName: (_) => Page2(),
        '/page3': (_) => Page3(),
        '/page4': (_) => Page4(),
      },
    );
  }
}
