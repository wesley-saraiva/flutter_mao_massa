// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'page4.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: RouteSettings(name: 'page 4'),
                    builder: (context) => Page4(),
                  ),
                );
              },
              child: Text('Page 4 via page'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Page 4 via named'),
            ),
          ],
        ),
      ),
    );
  }
}
