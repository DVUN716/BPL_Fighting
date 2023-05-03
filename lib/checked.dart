import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Check Box",
      debugShowCheckedModeBanner: false,
      home: CheckBoxs(),
    );
  }
}

class CheckBoxs extends StatefulWidget {
  const CheckBoxs({Key? key}) : super(key: key);

  @override
  _CheckBoxsState createState() => _CheckBoxsState();
}

class _CheckBoxsState extends State<CheckBoxs> {
  bool _isCheckRed = false;
  bool _isCheckOrange = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBox"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                "로그인 화면",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Checkbox(
                    value: _isCheckRed,
                    onChanged: (value) {
                      setState(() {
                        _isCheckRed = value!;
                      });
                    },
                  ),
                  Text("남성"),
                  Checkbox(
                    value: _isCheckOrange,
                    onChanged: (value) {
                      setState(() {
                        _isCheckOrange = value!;
                      });
                    },
                  ),
                  Text("여성"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}