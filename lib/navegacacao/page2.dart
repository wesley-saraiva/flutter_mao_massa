// ignore_for_file: prefer_const_constructors, prefer_const_declarations

import 'package:flutter/material.dart';

import 'page3.dart';

class Page2 extends StatelessWidget {
  static final String routeName = '/page2';
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    settings: RouteSettings(name: 'page 3'),
                    builder: (context) => Page3(),
                  ),
                );
              },
              child: Text('Page 3 via page'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Page 3 via named'),
            ),
          ],
        ),
      ),
    );
  }
}
