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
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            // color : Colors.amber, // decoration와 함께 사용 불
            decoration: BoxDecoration(
              color: Colors.amber, // decoration 안에 color를 활용해주세요.
              borderRadius: BorderRadius.circular(50), // 모서리를 둥글게
              border: Border.all(color: Colors.blue, width: 5), // 테두리
              boxShadow: [
                BoxShadow(
                  // 그림자 효과
                  color: Colors.grey.withOpacity(0.7), // 투명도 70% 회색
                  spreadRadius: 5, // 퍼짐 효과
                  blurRadius: 7, // 뭉갬 효과
                  offset: Offset(5, 5), // 그림자를 우측 5 아래 5만큼 이동
                ),
              ],
            ),
            alignment: Alignment.center,
            child: Text(
              "hi",
              style: TextStyle(fontSize: 50),
            ),
          ),
        ),
      ),
    );
  }
}
