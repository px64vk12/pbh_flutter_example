/// 1. 터미널에 flutter pub add shared_preferences
/// 2.
///
///
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

void save_pref(String value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('text', value);
}

Future<String> load_pref() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String stringValue = prefs.getString('text') ?? '';
  return stringValue;
}

class _MyAppState extends State<MyApp> {
  TextEditingController editController = new TextEditingController();
  String text = "";

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
              Text("저장된 값"),
              Text('$text'),

              TextField(
                controller: editController,
              ),

              ElevatedButton(
                onPressed: () {
                  save_pref(editController.text);
                  print(editController.text);
                },
                child: Text('저장하기!'),
              ),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    load_pref().then((val) {
                      // int가 나오면 해당 값을 출력
                      text = val;
                    }).catchError((error) {
                      // error가 해당 에러를 출력
                      print('error: $error');
                    });
                  });
                  print(text);
                },
                child: Text('불러오기!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
