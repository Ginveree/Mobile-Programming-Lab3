import 'dart:async';
import 'package:flutter/material.dart';
import 'menu.dart';
import 'model/user.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 4),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (content) => MainPage(user: user))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Builder(builder: (context) {
            return const Text("MH MOTORCYCLE",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold));
          }),
        ],
      )),
    );
  }
}
