// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Primeira AppBar'),
      //   backgroundColor: Colors.red[300],
      //   actions: [
      //     IconButton(
      //       onPressed: () {},
      //       icon: Icon(Icons.add_link_rounded),
      //     ),
      //     IconButton(
      //       onPressed: () {},
      //       icon: Icon(Icons.add_link_rounded),
      //     ),
      //     IconButton(
      //       onPressed: () {},
      //       icon: Icon(Icons.add_link_rounded),
      //     ),
      //   ],
      // ),
      // drawer: Drawer(
      //   child: Text('Menu Aberto'),
      // ),
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 20,
                  offset: Offset(10, 10),
                ),
                BoxShadow(
                  color: Colors.green,
                  blurRadius: 20,
                  offset: Offset(-10, -10),
                ),
              ]),
        ),
      ),
    );
  }
}
