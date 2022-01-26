import 'package:com_279045_lab3/tabpage1.dart';
import 'package:com_279045_lab3/tabpage2.dart';
import 'package:com_279045_lab3/tabpage3.dart';
import 'package:flutter/material.dart';
import 'model/user.dart';

class MainPage extends StatefulWidget {
  final User user;
  const MainPage({Key? key, required this.user}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late List<Widget> tabchildren;
  int _currentIndex = 0;
  String mainTitle = "Menu";

  @override
  void initState() {
    super.initState();
    tabchildren = [
      TabPage1(
        user: widget.user,
      ),
      TabPage2(user: widget.user),
      TabPage3(
        user: widget.user,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("MH MOTORCYCLE"),
        ),
        body: tabchildren[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            onTap: onTapped,
            currentIndex: _currentIndex,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.attach_money, color: Colors.white),
                  label: "Menu"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.attach_money, color: Colors.white),
                  label: "Payment"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.attach_money, color: Colors.white),
                  label: "Profile"),
            ]));
  }

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
      if (_currentIndex == 0) {
        mainTitle = "Menu";
      }
      if (_currentIndex == 1) {
        mainTitle = "Payment";
      }
      if (_currentIndex == 2) {
        mainTitle = "Profile";
      }
    });
  }
}
