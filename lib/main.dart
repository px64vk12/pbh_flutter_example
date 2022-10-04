/// Copyright 2022. ⓒ DevStory.co.kr All rights reserved.

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to AppBar'),
          actions: [
            IconButton(icon: Icon(Icons.image), onPressed: () {}),
            IconButton(icon: Icon(Icons.navigate_next), onPressed: () {}),
          ],
        ),
        // appbar leading 대신 drawer 추가
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Text('Drawer Header'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Container(
          width: double.infinity,
          color: Colors.white,
          child: Text('appBar Test'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.text_snippet),
              label: 'hi1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'hi2',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'hi3',
            ),
          ],
          selectedItemColor: Colors.lightGreen,
        ),
      ),
    );
  }
}
