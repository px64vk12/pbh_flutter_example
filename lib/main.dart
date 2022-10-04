/// Copyright 2022. ⓒ DevStory.co.kr All rights reserved.

// ignore_for_file: prefer_const_constructors
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
      // Scaffold는 appbar, bottomNav 같은 요소를 추가할 수 있습니다.
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        // contatiner는 화면의 색, 크기를 지정할 수 있습니다.
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.green,
          // column, row는 위젯을 나열할 수 있습니다.
          child: Column(
            crossAxisAlignment: // 정렬 방향을 설정 할 수 있습니다.
                CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.amber,
              ),
              //Sizedbox는 공간을 강제로 띄우거나
              //위젯의 크기를 강제할 때 씁니다.
              SizedBox(
                height: 100,
                width: 100,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.amber,
              ),
              SizedBox(
                height: 100,
                width: 30,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("test"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
