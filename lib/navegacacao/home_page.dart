// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'page1.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: RouteSettings(name: 'page1'),
                    builder: (context) => Page1(),
                  ),
                );
              },
              child: Text('Page 1 via page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/page1');
              },
              child: Text('Page 1 via named'),
            ),
          ],
        ),
      ),
    );
  }
}
