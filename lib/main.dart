// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('widget.title'),
      ),
      body: Center(
        child: Column(
          children: [
            SideBar(icon: Icons.home, title: "Home"),
            SideBar(icon: Icons.library_books, title: "Courses"),
            SideBar(icon: Icons.credit_card, title: "Billing"),
            SideBar(icon: Icons.settings, title: "Setting"),
          ],
        ),
      ),
    );
  }
}

//  Component

class SideBar extends StatelessWidget {
  final IconData icon;
  final String title;

  SideBar({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Container(
            width: 42.0,
            height: 42.0,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.0),
//             Gradient
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [
                  Color(0xFF00AEFF),
                  Color(0xFF0076FF),
                ],
              ),
            ),
            child: Icon(icon, color: Colors.white),
          ),
        ),
        SizedBox(
          width: 12.0,
        ),
        Container(
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 16.0,
              color: Color(0xFF242629),
            ),
          ),
        ),
      ],
    );
  }
}
