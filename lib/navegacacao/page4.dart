// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_mao_massa/navegacacao/home_page.dart';

import 'page1.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pushAndRemoveUntil(
                //     MaterialPageRoute(
                //       settings: RouteSettings(name: 'page 1'),
                //       builder: (context) => Page1(),
                //     ),
                //     ModalRoute.withName(''));
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      settings: RouteSettings(name: 'page 1'),
                      builder: (context) => HomePage(),
                    ),
                    (route) => route.isFirst);
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
