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
        appBar: AppBar(),
        body: Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: PageView(
                // 페이지 목록
                children: [
                  // 첫 번째 페이지
                  SizedBox.expand(
                    child: Container(
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          'Page index : 0',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  // 두 번째 페이지
                  SizedBox.expand(
                    child: Container(
                      color: Colors.yellow,
                      child: Center(
                        child: Text(
                          'Page index : 1',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  // 세 번째 페이지
                  SizedBox.expand(
                    child: Container(
                      color: Colors.green,
                      child: Center(
                        child: Text(
                          'Page index : 2',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  // 네 번째 페이지
                  SizedBox.expand(
                    child: Container(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'Page index : 3',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
