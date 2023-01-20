import 'package:hb_check_code/hb_check_code.dart';
import 'package:flutter/material.dart';
import 'package:random_string/random_string.dart';

void main() {
  runApp(newMyApp());
}

class newMyApp extends StatelessWidget {
  const newMyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color.fromARGB(255, 53, 33, 127)),
      home: Captcha(),
    );
  }
}

class Captcha extends StatefulWidget {
  const Captcha({super.key});

  @override
  _CaptchaState createState() => _CaptchaState();
}

class _CaptchaState extends State<Captcha> {
  @override
  Widget build(BuildContext context) {
    String code = randomNumeric(5);

    return Scaffold(
      body: Row(
        children: [
          Container(
              alignment: Alignment.center,
              child: HBCheckCode(
                code: code,
              )),
          InkWell(
              onTap: () {
                setState(() {});
              },
              child: const Icon(Icons.refresh)),
        ],
      ),
    );
  }
}
