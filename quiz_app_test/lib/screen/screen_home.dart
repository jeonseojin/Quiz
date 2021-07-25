import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    // mediaquery를 사용하여 절대적인 수치를 사용하지 않고 width와 height에 곱하기를 한 값을 활용할 예정

    // safeArea에 Scaffold를 넣는 형태로 화면을 구성하여 return
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Quiz APP'),
          backgroundColor: Colors.deepPurple,
          leading: Container(),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset(
                'images/quiz.jpeg',
                width: width * 0.8,
              ),
            )
          ],
        ),
      ),
    );
  }
}
