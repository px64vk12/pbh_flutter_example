/// Copyright 2022. ⓒ DevStory.co.kr All rights reserved.

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.green,
          // stack은 위젯을 겹쳐서 배치하거나, 자유롭게 배치할 때 씁니다.
          child: Stack(
            alignment: Alignment.center, // 기본 중앙 정렬
            children: [
              // Positioned는 원하는 위치에 배치합니다. 우측 상단
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                ),
              ),

              // 우측 하단
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
              ),

              // 좌측 하단
              Positioned(
                left: 0,
                bottom: 0,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.pink,
                ),
              ),

              // 중앙
              Container(
                height: 100,
                width: 100,
                color: Colors.indigo,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
