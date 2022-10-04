/// Copyright 2022. ⓒ DevStory.co.kr All rights reserved.

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
            children: [
              // 글자 출력
              Text("안녕하세요"),

              // 텍스트 입력
              TextField(
                autofocus: true, // 자동 포커스
                onChanged: (text) {
                  // 텍스트 변경시 실행되는 함수
                  print(text);
                },
                onSubmitted: (text) {
                  // Enter를 누를 때 실행되는 함수
                  print("on submitted : $text");
                },
              ),

              // 버튼 만들기
              // ElevatedButton : 네모난 기본 버튼
              ElevatedButton(
                onPressed: () {
                  print("Elevated Button 클릭");
                },
                child: Text('Elevated Button'),
              ),
              // TextButton : 텍스트를 버튼으로 만들 수 있습니다. 하이퍼 링크
              TextButton(
                onPressed: () {
                  print("Text Button 클릭");
                },
                child: Text('Text Button'),
              ),
              // IconButton : 아이콘도 버튼으로 만들 수 있습니다.
              IconButton(
                onPressed: () {
                  print("Icon Button 클릭");
                },
                icon: Icon(Icons.add),
              ),

              // Image : 이미지 링크를 가져옵니다.
              Image.network(
                  "https://upload.wikimedia.org/wikipedia/ko/thumb/2/24/Lenna.png/220px-Lenna.png")
            ],
          ),
        ),
      ),
    );
  }
}
