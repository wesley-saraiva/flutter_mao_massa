// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ImagesPage extends StatelessWidget {
  const ImagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Images',
          style: TextStyle(fontFamily: 'Tourney'),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'As Lendas da musica sertaneja',
              style: TextStyle(fontFamily: 'Tourney', fontSize: 30),
            ),
            Container(
              width: 300,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/zeze.jpg'), fit: BoxFit.cover),
              ),
              child: Center(
                child: Text(
                  'As Lendas',
                  style: TextStyle(
                    fontFamily: 'Tourney',
                    backgroundColor: Colors.blue.withOpacity(0.3),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.red,
              child: Image.asset(
                'assets/zeze.jpg',
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
