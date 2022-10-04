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
                child: ListView.builder(
                  itemCount: 100, // 전체 아이템 개수
                  itemBuilder: (context, index) {
                    // index는 0 ~ 99까지 증가하며 itemCount만큼 호출됩니다.
                    // 위젯을 반환해야 합니다.
                    return Container(
                      height: 100,
                      width: 100,
                      color: Colors.amber[100 * (index % 5)],
                      child: Text(
                        "$index",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
